% Fall 2018
% Lab #2, "Introduction to Matlab - II"
% Name: Terry-Ann Sneed

clc
close all
clear all

% Exercises:

% (A)
% step initialization
t=-pi:pi/100:pi;
% function initializations
f=cos(10*t);
g=exp(-0.5*t).*cos(10*t);
% generate plot
subplot(4,1,4)
plot(t,f,'r',t,g,'b')

% (B)
% step initialization
t=-pi:pi/100:pi;
% function initialization
f=sinh(t);
g=f.*sin(10*t);
%generate plots
subplot(4,1,3);
plot(t,f,'gx')
subplot(4,1,2); 
plot(t,g,'ro')

% (C)
% polynomial coeeficients for all equations
A=[2 3 2 1; 5 1 -3 2; 7 -5 -2 -1; 6 4 3 -5];
% y values for all equations
B=[3; 7; -5; -10];
% backslash operator to find system of equation solutions
xy=A\B;
% print solutions
disp("xy= ")
disp(xy)

% (D)
% define coefficients of characteristic equation & generate find roots
r=roots([1 5 7 5 -6 -10]);
% print roots
disp("roots are: ")
disp(r)

% (E)
% define roots & generate find polynomial
p=poly([-2 -3 5 -1+1i -1-1i]); % the us of "1i" was suggested by matlab instead of using i or j
% print polynomial
disp("polynomial is: ")
disp(p)

%(F)
% defining differential eq. & using dsolve to solve 
y=dsolve('D4y + 10*D3y + 35*D2y + 50*Dy + 24*y = 0', 'y(0)=2', 'Dy(0)=1', 'D2y(0)=0', 'D3y(0)=0', 't');
% print solution
disp("y= ")
disp(y)

% (G)
% audioread function targeting audio file 
m=audioread('Alarm08.wav');
% plotting audiowave
subplot(4, 1, 1)
plot(m)











