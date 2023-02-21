function [KQ]=Tichphan_Tonghop(x,f)
n=length(x);
if mod(n,2)==1
    KQ=Tichphan_13Simpson(x,f);
else
    if (n==2)
        KQ=Tichphan_Trapzoid(x,f);
    end
    if (n==4)
        KQ=Tichphan_38Simpson(x,f);
    else
        x1=x(1:4);
        f1=f(1:4);
        KQ=Tichphan_38Simpson(x1,f1);
        KQ=Tichphan_13Simpson(x(4:n),f(4:n));
    end
end