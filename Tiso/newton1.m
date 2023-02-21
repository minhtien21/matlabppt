function [Q]=newton1(mangx,mangf,x,bac)
mangA=Tisosaiphan(mangx,mangf);
t=length(mangx);
u=length(mangf);
if (bac>t)||(bac>u)||(bac<1)
    disp('nhap lai so bac')
else
    Q=mangA(1);
for i=2:bac+1
    tich=1;
    for k=1:i-1
        tich=tich*(x-mangx(k));
    end
    Q=Q+tich*mangA(i);
end
end
end
