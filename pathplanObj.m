function f=pathplanObj(X)
i=1;
f=0;
size_x= size(X);
global initialv;
global finalv;

while i<=(size_x(1)+1)
    if i==1
        f = f + (sqrt(abs((X(i,1)-initialv(1))^2+(X(i,2)-initialv(2))^2)));
    elseif i== size_x(1)+1
        f = f + sqrt(abs((finalv(1)-X(i-1,1))^2+(finalv(2)-X(i-1,2))^2));
    else
        f = f + sqrt(abs((X(i,1)-X(i-1,1))^2+(X(i,2)-X(i-1,2))^2));
    end
    i=i+1;
end






end