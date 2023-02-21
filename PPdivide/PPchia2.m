function [x,n]=PPchia2(a,b,e)
c=(a+b)/2
n=0;
while (abs(f(c))>e)
    d=f(a)*f(c);
    if (d>0)
        a=c;
    else
        b=c;
    end
    c=(a+b)/2;
    n=n+1;
end
x=c;
n