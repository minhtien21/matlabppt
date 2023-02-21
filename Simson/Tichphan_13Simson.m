function [Result]=Tichphan_13Simpson(x,f)
n=length(x);
h=(x(n)-x(1))/(n-1);
SLe=0;
SChan=0;
a=mod(n,2);
if (a==0)
    disp('Nhap lai');
else
    for i=2:2:(n-1)
        SLe=SLe+f(i);
    end
    for j=3:2:(n-2)
        SChan=SChan+f(j);
    end
    Result=(h/3)*(f(1)+4*SLe+2*SChan+f(n));
end
