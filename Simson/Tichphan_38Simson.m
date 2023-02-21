function [Result]=Tichphan_38Simpson(x,f)
n=length(x);
h=(x(n)-x(1))/(n-1);
a=mod(n-1,3);
Sum=0;
if a~=0
    for i=2:(n-1)
        Sum=Sum+f(i);
    end
    Result=(3*h/8)*(f(1)+3*Sum+f(n));
else
    disp('Nhap lai')
end
