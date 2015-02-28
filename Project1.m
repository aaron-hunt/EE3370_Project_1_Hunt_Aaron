% EE3370 Project 1
% MATLAB code for
% Aaron Hunt
% Due: 2/27/15

clc      % Clear screen 
clear    % Clear all variables
A = 3; f= 1000; omega = 2*pi*f; 
angle = degtorad(33); T=1/f;
t=linspace(-3*T,3*T,1000);

x_t=3*cos(omega*t+angle);
f_t=cos(omega*t).*sin(omega*t).*heaviside(t-1);

% time shifting heaviside function not working correctly
% ex: heaviside(t-1) = 0 for all values of t and
%     heaviside(t+1) = 1 for all values of t.

subplot(4,1,1)
plot(t,x_t, 'linewidth',2);grid on
subplot(4,1,2)
u_t=heaviside(t);
plot(t,u_t, 'linewidth',2);grid on
subplot(4,1,3)
plot(t,x_t.*u_t, 'linewidth',2);grid on
subplot(4,1,4)
plot(t,f_t, 'linewidth',2);grid on

