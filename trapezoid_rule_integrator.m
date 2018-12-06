clc
 %note: call the function you want to integrate from function file hw6f.

x = 0;   %just initializing x.

a = 0; b = 5; % set endpoints for integral. [a, b]


n = 20;  %number of subintervals.
h = (b-a)/(2^n);
               %setting new variables with endpoints to use later.
fx0 = hw6f(a); 
fxn = hw6f(b);
sumfx = 0; %initialize sum value for the trapezoid rule

R00 = (0.5)*(b-a)*(fx0+fxn);
Rn0 = R00;

for i = 1:((2^(n-1)))
    x = (a+(((2*i)-1)*h));
    sumfx = sumfx + hw6f(x);
end

for j = 1:n
    Rn0 = (0.5)*(Rn0) + (h)*(sumfx);
end

Rn0

