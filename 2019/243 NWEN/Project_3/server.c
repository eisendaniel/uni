/* Server Daniel Eisen 300447549
 * compile: gcc -o server server.c
 * run example: ./server 12345
 * */

#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <sys/wait.h>
#include <netinet/in.h>

#define BUFLEN 1024
int serv_sock;

/*Keyboard Interrupt handler to catch server termination
 * cleans up, closing server socket
 * */
void exithandler(int sig)
{
	fprintf(stdout, "\nserver processes killed\nshutting down...\n");
	close(serv_sock); //closes socket
	exit(EXIT_SUCCESS);
}

void eatZombies(int sig)
{
	// This function removes the zombie process state left
	// after the child exits. Learn about this in NWEN 301!
	wait3(NULL, WNOHANG, NULL); // Nom Nom
}

void reverse_string(char *str)
{
	/* skip null */
	if (str == 0) return;
	/* skip empty string */
	if (*str == 0) return;

	/* get range */
	char *start = str;
	char *end = start + strlen(str) - 1; /* -1 for \0 */
	char temp;

	/* reverse */
	while (end > start) {
		/* swap */
		temp = *start;
		*start = *end;
		*end = temp;

		/* move */
		++start;
		--end;
	}
}

/* @brief creates & return socket
 *
 * attempts to create a socket, exiting on failure
 * returning socket if successful
 */
int createSocket()
{
	//attempts to create a socket
	int sock = socket(AF_INET, SOCK_STREAM, 0);
	if (sock < 0) {
		fprintf(stderr, "ERROR creating socket\n");
		exit(EXIT_FAILURE); //if fails end process
	}
	printf("socket created\n"); //output to mark success
	return sock;
}

/* @brief attempts to bind socket to address
 * @param sock  socket to bind
 * @param serv  server address structure
 *
 * attempts to bind given socket and address
 * exiting upon failure to do so;
 * outputting error and exit(1)
 */
void bindSocket(int sock, struct sockaddr_in serv, int port)
{
	//attempts to bind socket to passed address
	if (bind(sock, (struct sockaddr *)&serv, sizeof(serv)) < 0) {
		fprintf(stderr, "ERROR binding socket\n");
		exit(EXIT_FAILURE); //if fails end process
	}
	printf("socket bound on port:%d\n", port); //output to mark success
}

/* @brief attempts to listen on socket for connecting
 * @param sock  socket on which to listen for clients
 *
 * attempts to listen on a given socket
 * exiting upon failure to do so;
 * outputting error and exit(1)
 */
void listenForClient(int sock)
{
	//attempts to set into listening state
	if (listen(sock, ) < 0) {
		fprintf(stderr, "ERROR listening for connections\n");
		exit(EXIT_FAILURE); //if fails end process
	}
	printf("listening for connections...\n"); //output to mark success
}

/* @brief attempts to accept incomming connection, returns client socket
 * @param sock  socket on which to connect a client
 * @param client  address struct for connecting client
 * @param len  size of client address struct
 *
 * attempts to connect client to server and store address
 * exiting upon failure to do so; outputting error and exit(1)
 * when successful returning the client socket
 */
int accecptConnection(int sock, struct sockaddr_in client, socklen_t len)
{
	//attempt to accept and bind client
	int client_fd = accept(sock, (struct sockaddr *)&client, &len);
	if (client_fd < 0) {
		fprintf(stderr, "ERROR accepting connection\n");
		exit(EXIT_FAILURE); //if fails end process
	}
	fprintf(stderr, "client connected\n");  //output to mark success
	return client_fd; //return client socket
}

void serveClient(int client)
{
	char buffer[BUFLEN]; // buffer for client input
	char welcome[] = "Hello!, welcome to THE MIRROR. 'exit' to disconnect\n";
	fprintf(stdout, "serving client...\n");
	//send message to greet client
	if (send(client, welcome, strlen(welcome), 0) < 0) {
		fprintf(stderr, "ERROR writing to client\n");
		close(client);
		exit(EXIT_FAILURE);
	}
	while (1) {
		//read client input
		memset(buffer, 0, BUFLEN); //reset buffer
		if (recv(client, buffer, BUFLEN, 0) < 0) {
			fprintf(stderr, "ERROR reading from client\n");
			close(client);
			exit(EXIT_FAILURE);
		}
		//if client sends exit command send confirmation and break loop
		if (strncasecmp(buffer, "exit", strlen("exit")) == 0) {
			fprintf(stdout, "Closing connection with client...\n");
			if (send(client, "disconneccted...\n", strlen("disconneccted...\n"), 0) < 0) {
				fprintf(stderr, "ERROR writing to client\n");
				close(client);
				exit(EXIT_FAILURE);
			}
			break;
		}
		reverse_string(buffer);
		//send response, ie reversed message
		if (send(client, buffer, BUFLEN, 0) < 0) {
			fprintf(stderr, "ERROR writing to client\n");
			close(client);
			exit(EXIT_FAILURE);
		}
	}
	close(client);
}

int main(int argc, char *argv[])
{
	if (argc < 2) {
		printf("ERROR no port number provided\n");
		exit(EXIT_FAILURE);
	}

	int msgsock;
	struct sockaddr_in server, client = {0};

	// for forking, and cleaning up zombie child state afterwards
	// You must not change this code.

	serv_sock = createSocket();
	pid_t id;
	signal(SIGCHLD, &eatZombies);
	signal(SIGINT, &exithandler);

	// Next, create the socket addressing structure
	server.sin_family = AF_INET;
	server.sin_addr.s_addr = INADDR_ANY;
	server.sin_port = htons(atoi(argv[1])); // this time 1st arg is port#

	bindSocket(serv_sock, server, atoi(argv[1]));


	while (1) {
		// Start by listening
		listenForClient(serv_sock);
		// accept the connection request
		msgsock = accecptConnection(serv_sock, client, sizeof(client));
		// the next call makes a new child process that will actually handle the client.
		id = fork();
		// when id == 0, this is the child and needs to do the work for the server.
		// when if > 0, this is the parent, and it should just loop around,
		// when id < 0, we had an error.
		if (id < 0) {
			fprintf(stderr, "ERROR forking process, serving as parent\n");
			serveClient(msgsock);
		} else if (id == 0) {
			serveClient(msgsock);
			exit(EXIT_SUCCESS);

		} else {
			close(msgsock);
		}
	}
}
