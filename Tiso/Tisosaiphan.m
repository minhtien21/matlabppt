function [B]=Tisosaiphan(x,f)
n=length(x);
A=zeros(n,n);
A(:,1)=f';
for j=2:n
    for i=j:n
        A(i,j)=(A(i,j-1)-A(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
B=diag(A);