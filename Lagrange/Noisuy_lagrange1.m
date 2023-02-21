function [Result]=Noisuy_lagrange1(Mangx,Mangf,x)
n=length(Mangx);
Result=0;
for k=1:1:n
    L=1;
    for i=1:1:n
        if(i~=k)
            L=L*(x-Mangx(i))/(Mangx(k)-Mangx(i));
        end
    end
    Result=Result+Mangf(k)*L;
end
end