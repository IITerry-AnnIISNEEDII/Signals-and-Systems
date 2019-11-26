% Fall 2018
% Name: Terry-Ann Sneed
% Lab #5

clc
clear all
close all

% Part I
dt = 0.001; 
t = -2:dt:25; 
f = sin((t* pi)/10) .* rectpuls((t - 10)/20); 
g =  cos((t* pi)/5) .* rectpuls((t - 15/2)/15); 
y = dt*conv(f, g); 
t1 = -4:dt:50;  
subplot(6,1,1), plot(t,f);
subplot(6,1,2), plot(t,g); 
subplot(6,1,3), plot(t1,y);

% Part II
dt = 0.001; 
t = -12:dt:22; 
f = - 2 * exp(2*t) .* rectpuls((t + 5)/10) + 2 * exp(-t) .* rectpuls((t - 5)/10); 
g = rectpuls((t - 5)/10); 
y = dt*conv(f, g); 
t1 = -24:dt:44;  
subplot(6,1,4), plot(t,f);
subplot(6,1,5), plot(t,g); 
subplot(6,1,6), plot(t1,y);