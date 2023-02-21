function [y]=DiffEulerW(x0,y0,h,xEnd)
while (x0<xEnd)
    y=y0+h*f(x0,y0);
    x0=x0+h;
    y0=y;
end