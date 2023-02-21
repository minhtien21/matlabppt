function [Result]=Noisuy_lagrange(Mangx,Mangf,x)
n=length(Mangx);
Result=0;
for k=1:1:n
    L=TinhL(Mangx,x,k);
    Result=Result+Mangf(k)*L;
end
end