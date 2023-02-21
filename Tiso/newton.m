function [P]=newton(mangx,mangf,x,bac)
mangA=Tisosaiphan(mangx,mangf);
P=mangA(1);
for i=2:bac+1
    tich=1;
    for k=1:i-1
        tich=tich*(x-mangx(k));
    end
    P=P+tich*mangA(i);
end
end