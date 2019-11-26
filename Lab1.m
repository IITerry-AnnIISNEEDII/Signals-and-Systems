% Name: Terry-Ann Sneed 
% Lab #1 - Fall 2018

clc 
close all 
clear all

% Exercise 1:

% A and B array population A = [1 1; 1 0]; B = [1 0; 0 1];

% X and Y calculation definition X=A*B; Y=A.*B;

% Print to console of X AND Y fprintf('X = A*B:\n\n') disp(X)

fprintf('Y = A.*B:\n\n') 
disp(Y)

% Here X and Y are not the same because % Y multiplies arrays A and B element by element whereas X simply performs % matrix multiplication

% Exercise 2:

clc 
clear all 
close all

% Sequence creation t=0:100; y=t.*exp(t);

% Plot creation plot(t,y),xlabel('y'),ylabel('t'),title('y vs. t')

% Exercise 3:

% a), b) & c)

% I have not figured out to implement this in a loop, however here is the % idea:
% this is the decimal number to be converted to binary

% x=25;

% b is what we will divide the decimal numbers by % b=2;

% here we want to divide the decimal number by b % y=x/b;

% then we get the remainder % remainder=rem(25,2);

% continue dividing the interger part of the output %y=floor(y/b);

% etc until y = 0 %remainder=rem(y,2);

% then store remainder values into an array which will display the binary % value

x=255; 
b=2; 
binary=[];
y=x/b; 
binary(1)=rem(x,2);

while(y>0)    
    for p=2:10        
        y=floor(y/b);        
        binary(p)=rem(y,2);        
        disp(binary(p))    
    end
end
for p=1:10    
    fprintf('binary # is: ')    
    disp(binary(p))
end






















    
    
    
    
    
    
    
    
    
    
    
    

