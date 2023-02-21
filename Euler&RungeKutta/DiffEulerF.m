function [y]=DiffEulerF(x0,y0,h,xEnd)
x=x0:h:xEnd;
y(1)=y0;
n=length(x);
for i=1:n-1
    y(i+1)=y(i)+h*f(x(i),y(i));
end
    