clc
 %note: call the function you want to integrate from function file hw6f.

x = 0;   %just initializing x.

a = 0; b = pi; % set endpoints for integral. [a, b]


n = 20;  %number of subintervals.
h = (b-a)/n;
              %setting new variables with endpoints to use later.
fx0 = hw6f(a); 

fxn = hw6f(b);
sumfx = 0; %initialize sum value for the trapezoid rule


for i = 1:(n-1)
    x = a +(i)*(h);
    sumfx = sumfx + hw6f(x);
end

T = (h/2)*(fx0+fxn)+h*sumfx



