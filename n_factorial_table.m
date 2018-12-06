clc

%prints table of n's and their factorial values

N = (1:20)'; %input any integer here
Nfact = ones(length(N),1); %initialize N factorial

for i = 1:length(N)
    for j = 1:N(i)
        Nfact(i) = Nfact(i)*j;
    end
end
format long
T = table(N,Nfact)
