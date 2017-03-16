function [g, geq]=pathConst(X)
i=1;
while i<=size(X)
    %if X(i,1) < 4
    g(1)=sqrt(((X(i,1)-2.5)^2+(X(i,2)-3.5)^2-0.25));
    g(2)=sqrt(((X(i,1)-2.5)^2+(X(i,2)-8.5)^2-0.25));
    %elseif X(i,1)> 6
    g(4)=sqrt(((X(i,1)-7.5)^2+(X(i,2)-2.5)^2-0.25));
    g(3)=sqrt(((X(i,1)-8)^2+(X(i,2)-6)^2-1));
    %else
    g(5)=4-X(i,2);
    g(6)=X(i,2)-6;
    g(7)=-4+X(i,1);
    g(8)=-X(i,1)+6;
    %end
    i=i+1;
end
geq=[];
end