function [x]=PPnewton(x0,ss)
x=x0-f(x0)/df(x0);
N=1;
while (abs(x-x0)>ss)
    x0=x;
    x=x0-f(x0)/df(x0);
    N=N+1;
end
N