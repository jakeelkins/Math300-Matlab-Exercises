clc

N = 50;  %to whatever N power. I used 50.
x = (0:0.1:0.9)'; %x-values.
sumGS = zeros(1,length(x))'; %initialize a sum vector.
fx = zeros(1, length(x))'; %initialize fx vector.
for i = 1:(length(x))
    for j = 0:N
        sumGS(i) = sumGS(i)+ x(i).^(j);
    end
    fx(i) = (1-x(i))^(-1); 
end

plot(x,sumGS,x,fx)
xlabel('x')
ylabel('y')
title('Plot of Sums of Geometric Series','FontSize',12)
legend('sumGS','fx')

