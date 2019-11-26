% Fall 2018
% Name: Terry-Ann Sneed 
% Lab 3: Operations on signals

clc close all clear all 

% Exercises 

% 1.

t1=-25:0.001:25; 

fa1=((1/6)*t1-2).*rectpuls(t1-((15-6)/2),9) +  ((-1/18)*t1+(4/3)).*rectpuls(t1-((24-15)/2),9); 
fb1=((1/6)*(t1+6)-2).*rectpuls((t1+6)-((15-6)/2),9) +  ((-1/18)*(t1+6)+(4/3)).*rectpuls((t1+6)-((24-15)/2),9); 
fc1=((1/6)*(-t1)-2).*rectpuls((-t1)-((15-6)/2),9) + ((-1/18)*(t1)+(4/3)).*rectpuls((-t1)-((24-15)/2),9); 
fd1=((1/6)*(3*t1)-2).*rectpuls((3*t1)-((15-6)/2),9) +  ((-1/18)*(3*t1)+(4/3)).*rectpuls((3*t1)-((24-15)/2),9);

subplot(4,4,1),plot(t1,fa1); 
subplot(4,4,2),plot(t1,fb1); 
subplot(4,4,3),plot(t1,fc1); 
subplot(4,4,4),plot(t1,fd1); 

% 2.

t2=-7:0.001:7; 

fa2=-t2.*rectpuls(t2-(-4/2),4) + t2.*rectpuls(t2-1,2); 
fb2=-(t2-4).*rectpuls((t2-4)-(-4/2),4) + (t2-4).*rectpuls((t2-4)-1,2); 
fc2=-(t2/1.5).*rectpuls((t2/1.5)-(-4/2),4) +  (t2/1.5).*rectpuls((t2/1.5)-1,2); 
fd2=-(-t2).*rectpuls((-t2)-(-4/2),4) + (-t2).*rectpuls((-t2)-1,2); 
fe2=-(2*t2-4).*rectpuls((2*t2-4)-(-4/2),4) +  (2*t2-4).*rectpuls((2*t2-4)-1,2); 
ff2=-(-t2+2).*rectpuls((-t2+2)-(-4/2),4) + (-t2+2).*rectpuls((t2+2)-1,2);

subplot(4,4,5),plot(t2,fa2); 
subplot(4,4,6),plot(t2,fb2); 
subplot(4,4,7),plot(t2,fc2); 
subplot(4,4,8),plot(t2,fd2); 
subplot(4,4,9),plot(t2,fe2); 
subplot(4,4,10),plot(t2,ff2);

