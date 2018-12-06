clc

Tc = [-10; 0; 10; 20; 30]; %input the temperatures in Celsius.
Tf = [0; 0; 0; 0; 0]; %initialize temperature matrix in Farenheit

for i = 1:length(Tc);
    Tf(i) = ((Tc(i))*1.8)+32;
end

T = table(Tc,Tf)
