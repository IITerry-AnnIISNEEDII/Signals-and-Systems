% Fall 2018
% Name: Terry-Ann Sneed
% Lab 4: Line Time Invariant System Response

% Exercises

clc
clear all
close all

% 1.
% zero input response
% y'''+8y''+2521y'+5018y=f''+ 5018f, y(0)=1, y'(0)=1, y''(0)=0
yo = dsolve('D3y + 8*D2y + 2521*Dy + 5018*y = 0', 'y(0) = 1', 'Dy(0) = 1', 'D2y(0) = 0');
disp(yo);

% 2.
% Plot zero input response with 0<=t<=4

t = 0:0.001:4;
y = (2515.*exp(-2*t))/2501 - (14*cos(50*t).*exp(-3*t))/2501 + (7489*sin(50*t).*exp(-3*t))/125050;
subplot(4,1,1),plot(t,y);

% 3. 
% Obtain symbolic expression for impulse response & plot for 0<=t<=4

h = diff(yo);
j = diff(h) + 5018*yo;
disp(j);
ht = (12630330.*exp(-2*t))/2501 - (80312*cos(50*t).*exp(-3*t))/2501 + (18714703*sin(50*t).*exp(-3*t))/125050;
subplot(4,1,2), plot(t,ht);

% 4.
% Create a system object using tf & obtain the sero-state resp. using step 1

TFsys = tf([1 0 5018], [1 8 2521 5018]);
[ystep, t] = step(TFsys);
subplot(4,1,3), plot(t,ystep), title('Step Response'), xlabel('t'), ylabel('ystep(t)');
[h,t] = impulse(TFsys);
subplot(4,1,4), plot(t,h), title('Impulse Response'), xlabel('t'), ylabel('h(t)');




%5.
% Find the zero-state response of the system from part 1 for 0 = t = 4 with the following input using lsim.
% WARNING: I have not figured out how to implement the f = t for 0 <= t < 1, I will ask about this during the next lab.
t = 0:0.001:4;
f = t.* double(rectpuls((t-0.5)/1)) + double(rectpuls((t-2)/2));
lsim(TFsys, f, t)








