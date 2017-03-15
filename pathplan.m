%path planning for robot function
%Written by: Prajval and Lou
%% 
function f=pathplan(init,final)
% size_x= 2; x=sym('x',[size_x 1]); y=sym('y',[size_x 1]); X=[x,y]; i=1;
% obj_func=0; %init=[1,1]; %final=[5,5];
% 
% while i<=(size_x+1)
%     if i==1
%         obj_func = obj_func +
%         sqrt((X(i,1)-init(1))^2+(X(i,2)-init(2))^2);
%     elseif i== size_x+1
%         obj_func = obj_func +
%         sqrt((final(1)-(X(i-1,1))^2+(final(2)-(X(i-1,1))^2)));
%     else
%         obj_func = obj_func +
%         sqrt((X(i,1)-X(i-1,1))^2+(X(i,2)-X(i-1,2))^2);
%     end i=i+1;
% end objective_func=@(x1,x2,y1,y2,init,final) obj_func;
%% 

%Initial guess for way points

lb=[0 0;0 0];
ub=[10 10;10 10];
x0=[1,2;3,7;4,6;9,9];
global initialv;
global finalv;
initialv=init;
finalv=final;

options=optimset('Display','iter','TolX',1.e-6,'Tolfun',1.e-8);
f = fmincon('pathplanObj',x0,[],[],[],[],lb,ub,'pathConst',options)


end