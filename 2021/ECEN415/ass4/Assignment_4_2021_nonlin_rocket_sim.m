% Nonlinear rocket simulation.
global g c_d M J L eta k

g= -9.8;   
c_d = 2e-3; 
M = 1000;
J = 20e3;
L = 5;
eta = 1000;
k = 6;

% =========================================================================
% Nonlinear model of the rocket motion.
% =========================================================================
% The state here is defined as in the assignment.
% Note that u_1 is passed as x(8) and u_2 is passed to the solver as x(9)
% (That is, matlab's ODE solver doesn't have separate inputs, so we must
% pass them as elements of the x vector.)
%
% x(2)*abs(x(2)) is used in the drag equation to make sure that it always
% opposes the direction of motion. Note however, that it should actually
% not act only on the vertical velocity, but the total velocity.
%
% Note that the model does not check for ground contact, so will allow the
% rocket to move to negative altitude.

% f = @(t,x) [x(2); 
%             g + x(8)*cos(deg2rad(x(5))) / (M+x(7)) - c_d*x(2)*abs(x(2)); 
%             x(4);
%             x(8)*sin(deg2rad(x(5))) / (M+x(7));
%             x(6);
%             k/(J+L^2*x(7))*x(9);
%             -1/eta*(x(8)+x(9));
%             0;
%             0];

% This includs a better drag model for X(1) < 12km.
% https://en.wikipedia.org/wiki/Density_of_air (exponential approximation).
% c_d is chosen to give a terminal veolocity of about 90 m/s at ground
% level.
f = @(t,x) [x(2); 
            g + x(8)*cos(deg2rad(x(5))) / (M+x(7)) - c_d*x(2)*abs(x(2))*exp(-x(1)/10400); 
            x(4);
            x(8)*sin(deg2rad(x(5))) / (M+x(7));
            x(6);
            k/(J+L^2*x(7))*x(9);
            -1/eta*(x(8)+x(9));
            0;
            0];
        
%==========================================================================

% Simulation parameters ---------------------------------------------------
global x_0
x_0 = [0   % Altitude [m]
       0;  % Vertical speed [m/s]
       0;  % Horizontal position [m]
       0;  % Horizontal speed [m/s]
       0;  % Rocket angle [deg]
       0;  % Rocket rotational speed [deg/s]
       1000;  % Fuel remaining [kg]
       ]';
x = x_0;
      
dt = 1;
elapsed_time = 0;


% % Symbolic Model --------------------------------------------------------

% syms x1 x2 x3 x4 x5 x6 x7 u1 u2
% f_sym = @(t,x) [x2; 
%                 g + u1*cos(x5) / (M+x7) - c_d*x2^2;  
%                 x4;
%                 u1*sin(x5) / (M+x7);
%                 x6;
%                 k/(J+L^2*x7)*u2;
%                 -1/eta*(u1+u2);
%                 ];
            

% 
% The simulation ----------------------------------------------------------
store = [];
t_store = [];

figure(1)
clf;
while (x(1) > -0.01) & (elapsed_time <  15)
    if x(7) >  0 % Check whether there is any fuel remaining.
    [u1, u2] = controller_command(elapsed_time, x);
    else
        u1 = 0;
        u2 = 0;
    end
  
  % Add some wind disturbances to the rocket.
  %w1 = randn(1,1) * 2000*exp(-(1+x(1))/10400);
  %w2 = randn(1,1) * 1000*exp(-(1+x(1))/10400);
    
  x(8) = u1; % Load the inputs as "fake" state variables for the solver.
  x(9) = u2; 
  
  [t,x] = ode45(f, [0 dt], x);
  
  plot_telemetry(elapsed_time+t, x);

  % You can use these variables later to examine the flight.
  t_store = [t_store; elapsed_time+t];
  store = [store; x];

  elapsed_time = elapsed_time + dt;
  x = x(end,:);
end

x_store = store(:,1:7);
u_store = store(:,8:9);

%--------------------------------------------------------------------------
% Plotting function to display the telemetry during flight.
%--------------------------------------------------------------------------

function[] = plot_telemetry(t,x)
  global x_0

  subplot(1,2,1)
  xlabel('Distance downrange [m]')
  ylabel('Altitude [m]')
  hold on;
  plot(x(:,3), x(:,1), 'b')
  
  subplot(4,2,4)
  xlabel('Time [s]')
  ylabel('Velocities [m/s]')
  hold on
  plot(t, x(:,2), 'b', t, x(:,4), 'r')
  legend('Vertical speed', 'Horizontal speed', 'Location', 'northwest')
  
  subplot(4,2,6)
  xlabel('Time [s]')
  ylabel('Pitch angle [deg]')
  hold on
  plot(t, x(:,5), 'b')
  
  subplot(4,2,8)
  xlabel('Time [s]')
  ylabel('Fuel [kg]')
  hold on
  plot(t, x(:, 7), 'b')
  if x(:,7)<0
    set(gca, 'Color' ,'r')
  end
  
  subplot(4,2,2)
  plot(0,0,'bo')
  box off
  hold on
  axis equal
  axis off
  max_u1 = 1000/0.001/15;
  line([0, max_u1*sin(deg2rad(x(end,5)))], [0 max_u1*cos(deg2rad(x(end,5)))],'Color','b')
  line([0, -x(end,8)*sin(deg2rad(x(end,5)))], [0 -x(end,8)*cos(deg2rad(x(end,5)))],'Color','r')
  plot(-x(end,8)*sin(deg2rad(x(end,5))),-x(end,8)*cos(deg2rad(x(end,5))),'r*')
  hold off
  
  drawnow
  
end

%--------------------------------------------------------------------------
% Controller code
%--------------------------------------------------------------------------
% You should change the content of this function. The example code included
% here is not particularly clever, but should run.
function[u1, u2] = controller_command(t, x)
    global g c_d M J L eta k x_0
    persistent Df_x Df_u
    
    % Final states we wish to achieve
    x_f = [1500, 300, 100, 20, 10, 0, 0];  
    
    
    % Set the initial inputs to the system, these have been placed inside
    % the x vector for t>0.
    % Also create the system Jacobians based on a non-linear system model
    if t == 0
        % Set the initial conditions of the system
        u1_i = 1000;
        u2_i = 0;
        x = [x, u1_i, u2_i]; 
        
        % % Symbolic Model --------------------------------------------------------
        syms x1 x2 x3 x4 x5 x6 x7 u1 u2
        f_sym = @(t,x) [x2; 
                        g + u1*cos(x5) / (M+x7) - c_d*x2^2;  
                        x4;
                        u1*sin(x5) / (M+x7);
                        x6;
                        k/(J+L^2*x7)*u2;
                        -1/eta*(u1+u2);
                        ];
        % % Symbolic Model --------------------------------------------------------
        
        % Generate the jacobian matrecies
        Df_x = jacobian(f_sym, [x1 x2 x3 x4 x5 x6 x7]);
        Df_u = jacobian(f_sym, [u1 u2]);
    end
    
    
    % Substitute values into the A matrix and B matrix Jacobians from the
    % previous time step
    syms x1 x2 x3 x4 x5 x6 x7 u1 u2
    A = double(subs(Df_x, [x1 x2 x3 x4 x5 x6 x7 u1 u2], x));
    B = double(subs(Df_u, [x1 x2 x3 x4 x5 x6 x7 u1 u2], x));
    
    cur_x = x(:,1:7)'; %current state of x 
    cur_u = x(:,8:9)'; %current state of u 
    
%   estimated new x from linearisation
%   new_x = cur_x + A*cur_x + B*cur_u;
    
    %TODO determine x_prime in direction of final x

    u = pinv(B) * (x_f' - cur_x -  A*cur_x);
    u1 = u(1,:);
    u2 = u(2,:);
    % Somehow calculate the next u1 and u2???
%     u1 = eta*x_0(7)/15; % Burn all of the fuel in 15s at uniform rate. 
%     u2 = eta*2;  
    
end