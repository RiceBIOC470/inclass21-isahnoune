%In class 21

% 1. Consider the system we discussed in class for a gene which is produced
% and degraded: dx/dt = k - d*x. Now consider that this gene turns on a
% second gene y, which also degrades so that its equation is 
% dy/dt = k2*x - d2*y. Choose some values for k,d,k2, and d2 and run a
% numerical simulation of this system for the case where both genes start
% out off ( x(0) = 0 and y(0) = 0). Plot the value of x and y in time and 
% explain your results. 

%dx = k-d*x, dy = k2*x-d2*y
%k = 1, d = 2, k2 = 3, d2 = 4

F = @(t,x) [1-2*x(1);3*x(1) - 4*x(2)]; 
Fresults = ode23(F, [0 100],[0,0]);
plot(Fresults.x, Fresults.y(1,:)); 
hold on;
plot(Fresults.x, Fresults.y(2,:)); 
hold off;

%The plot peaks quickly and then plateaus at 0.35 and 0.5, implying
%degradation at approximately t = 2 to t = 4.


% 2. Consider the following model: 
% dx/dt = y
% dy/dt = (1-x^2)*y - x
% write code that simulates this system for several different starting
% values of x and y. Plot the results and comment on them. 

F = @(t,x) [x(2);(1-x(1)^2)*x(2) - x(1)]; 

xstart = rand();
ystart = rand();
Fresults = ode23(F, [0 10],[xstart,ystart]);
figure;
plot(sol.x, sol.y(1,:));
hold on;
plot(sol.x, sol.y(2,:));
 
xstart = rand();
ystart = rand();
Fresults = ode23(F, [0 10],[xstart,ystart]);
figure;
plot(sol.x, sol.y(1,:));
hold on;
plot(sol.x, sol.y(2,:));

xstart = rand();
ystart = rand();
Fresults = ode23(F, [0 10],[xstart,ystart]);
figure;
plot(sol.x, sol.y(1,:));
hold on;
plot(sol.x, sol.y(2,:));

%There are variable results according to whether x is greater than y and
%vice versa.