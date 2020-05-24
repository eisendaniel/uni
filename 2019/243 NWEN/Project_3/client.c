/* Server Daniel Eisen 300447549
 * compile: gcc -o client client.c
 * run example: ./client embassy.ecs.vuw.ac.nz 12345 "example message from client"
 * */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <netdb.h>
#include <sys/socket.h>
#include <netinet/in.h>

#define BUFLEN 1024

int main(argc, argv)int argc; char *argv[];{
	int sock, rval;
	struct hostent *host;
	struct sockaddr_in server;  // not a pointer.
	char buf[BUFLEN];
	memset(buf, 0, BUFLEN);

	if (argc != 4) {
		fprintf(stderr, "usage: hostname port string\n ie: host.ecs.vuw.ac.nz 12345 message");
		return (EXIT_FAILURE);
	}

	// look up hostname (server) using DN
	if ((host = gethostbyname(argv[1])) == 0) {
		fprintf(stderr, "%s: unknown host\n", argv[1]);
		return (EXIT_FAILURE);
	}

	// Set up fields for socket to point to host and port
	bcopy(host->h_addr, &server.sin_addr, host->h_length);
	server.sin_family = AF_INET;
	server.sin_port = htons(atoi(argv[2]));

	// Create socket
	sock = socket(AF_INET, SOCK_STREAM, 0);

	// connect (3-way handshake)
	if (connect(sock, (struct sockaddr *)&server, sizeof(server)) < 0) {
		fprintf(stderr, "Error: Unable to connect\n");
		exit(EXIT_FAILURE);
	}
	//get confirmation
	rval = recv(sock, buf, BUFLEN, 0);
	if (rval < 0) {
		fprintf(stderr, "Error: Unable to read from socket\n");
		exit(EXIT_FAILURE);
	} else if (rval == 0) {
		fprintf(stderr, "Socket closed by server.\n");
		close(sock);
		exit(EXIT_FAILURE);
	}
	// print result to window
	fprintf(stdout, "%s\n", buf);


	//loop 100x sending the argv string
	for (int i = 0; i < 100; ++i) {
		strncpy(buf, argv[3], BUFLEN);
		// Send sentence to server
		if (send(sock, buf, BUFLEN, 0) < 0) {
			fprintf(stderr, "Error: Unable to write to socket\n");
			exit(EXIT_FAILURE);
		}
		memset(buf, 0, BUFLEN); // clear buffer
		// read response from server
		rval = recv(sock, buf, BUFLEN, 0);
		if (rval < 0) {
			fprintf(stderr, "Error: Unable to read from socket\n");
			exit(EXIT_FAILURE);
		} else if (rval == 0) {
			fprintf(stderr, "Socket closed by server.\n");
			close(sock);
			exit(EXIT_FAILURE);
		}
		// print result to window
		fprintf(stdout, "%s\n", buf);
		sleep(3);
		memset(buf, 0, BUFLEN); // clear buffer
	}
	if (send(sock, "exit", strlen("exit"), 0) < 0) {
		fprintf(stderr, "Error: Unable to write to socket\n");
		exit(EXIT_FAILURE);
	}
	// read for server disconnect confirmation
	rval = recv(sock, buf, BUFLEN, 0);
	if (rval < 0) {
		fprintf(stderr, "Error: Unable to read from socket\n");
		exit(EXIT_FAILURE);
	} else if (rval == 0) {
		fprintf(stderr, "Socket closed by server.\n");
		close(sock);
		exit(EXIT_SUCCESS);
	}
	// print result to window
	fprintf(stdout, "%s\n", buf);
	close(sock);
	exit(EXIT_SUCCESS);
}
