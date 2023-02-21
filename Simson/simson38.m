function y=simpson38(a,b,n,f)
h=(b-a)/n;
x=a+1:h:b-1;
y=f(1)+f(n+1);
for i=2:n
    if (mod(i,4)~=0)
        y=y+3*f(x(i));
    else
        y=y+2*f(x(i));
    end
end
y=3/8*h*y;
end

