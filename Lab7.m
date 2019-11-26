% Fall 2018
% Name: Terry-Ann Sneed
% Lab # 7 

clear all 
close all 

syms t k L n % Initialize symbolic variables 
evalin(symengine,'assume(k,Type::Integer)');  % Let matlab know that the variable k is an integer 
a = @(f,t,k,L) int(f*cos(k*pi*t/L)/L,t,-L,L); % create kth cosine coefficient a
b = @(f,t,k,L) int(f*sin(k*pi*t/L)/L,t,-L,L);   % create kth sine coefficient b 
fs = @(f,t,n,L) a(f,t,0,L)/2 + ...     
    symsum(a(f,t,k,L)*cos(k*pi*t/L) + b(f,t,k,L)*sin(k*pi*t/L),k,1,n);   % generate the nth partial sum   
f = t;  % Original function 

n = [2 10 20 50 100];

g = inline(vectorize(fs(f,t,2,1))); 
h = inline(vectorize(f)); X = -1:.001:1; 
rmse_1 = sqrt(sum((h(X)-g(X)).^2)/ n(1))

g = inline(vectorize(fs(f,t,10,1))); 
h = inline(vectorize(f)); X = -1:.001:1; 
rmse_2 = sqrt(sum((h(X)-g(X)).^2)/ n(2))

g = inline(vectorize(fs(f,t,20,1))); 
h = inline(vectorize(f)); X = -1:.001:1; 
rmse_3 = sqrt(sum((h(X)-g(X)).^2)/ n(3))

g = inline(vectorize(fs(f,t,50,1))); 
h = inline(vectorize(f)); X = -1:.001:1; 
rmse_4 = sqrt(sum((h(X)-g(X)).^2)/ n(4))

g = inline(vectorize(fs(f,t,100,1))); 
h = inline(vectorize(f)); X = -1:.001:1; 
rmse_5 = sqrt(sum((h(X)-g(X)).^2)/ n(5))

rmse_array = [rmse_1 rmse_2 rmse_3 rmse_4 rmse_5];

plot(rmse_array, n)
title("RMSE vs N")



