%Define initial and target position of robot
%Written by: Prajval and Lou
%%
clear all
clc
close all
%%
%Declare initial and final positions required
robot_initial_pos=[0, 0];
robot_final_pos=[10, 6];
f=pathplan(robot_initial_pos,robot_final_pos);
environment;
pos=[robot_initial_pos;f;robot_final_pos];


%%
%Plotting functions included here
i=1;
fx=size(f);
while i<=fx(1)+1
    if i==1
        plot([robot_initial_pos(1),f(i,1)],[robot_initial_pos(2),f(i,2)],'b','LineWidth',2)
    elseif i==fx(1)+1
        plot([f(i-1,1),robot_final_pos(1)],[f(i-1,2),robot_final_pos(2)],'y','LineWidth',2)
    else
        plot([f(i,1),f(i,1)],[f(i,2),f(i,2)],'r','LineWidth',2)
    end
    plot(pos(:,1),pos(:,2),'x')
    i=i+1;
end