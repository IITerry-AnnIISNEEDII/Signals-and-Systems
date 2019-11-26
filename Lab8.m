%LAB 8
%NAME: Terry-Ann Sneed
%FALL 2018

clc
clear all
close all

t = 0:.001:1;
f = (20/pi)*sinc((20*t)/pi).*cos(300*t)+(10/pi).*sinc((10*t)/pi).^2.*cos(100*t);
subplot(311),plot(t,f)

T1 = 0;  
T2 = 1;  
No = 256;
Ts = (T2 - T1)/No; 
t = T1:Ts:T2-Ts; 
ws = 2*pi/Ts/No;       
w = -pi/Ts:ws:pi/Ts-ws;  
f = (20/pi)*sinc((20*t)/pi).*cos(300*t)+(10/pi).*sinc((10*t)/pi).^2.*cos(100*t);      
FF = fft(f);
FF = fftshift(FF);                      
FF = Ts*FF; figure(1); 
subplot(312),plot(w,abs(FF)),title('FFT based Magnitude Spectrum'); 
axis([-pi/Ts pi/Ts 0 0.51]); 
subplot(313),plot(w,angle(FF)*180/pi),title('Phase Spectrum'); 
axis([-pi/Ts pi/Ts -200 200]); 
xlabel('\omega, rad/s'); 
 
 