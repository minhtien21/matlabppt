function [L]=TinhL(Mangx,x,k)
n=length(Mangx);
L=1;
for i=1:1:n
    if (i~=k)
        L=L.*(x-Mangx(i))/(Mangx(k)-Mangx(i));
    end
end