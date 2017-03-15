%Drawing Environment for robot traversal.
%Written by: Prajval and Lou

%% 
%function environment(init, target)
%Obstacles
circle_pos1 = [2 3 1 1]; 
circle_pos2 = [8 5 1.5 1.5]; 
circle_pos3 = [2 8 1 1]; 
circle_pos4 = [7 2 1 1]; 
obs_colour = [0 .5 .5];
main_grid=[0 0 10 10];
obstacle_1=[4 0 2 4];
obstacle_2=[4 6 2 4];
circle_curv=[1 1];
grid on
rectangle('position',main_grid,'EdgeColor',obs_colour,'LineWidth',5)
rectangle('position',obstacle_1,'FaceColor',obs_colour)
rectangle('position',obstacle_2,'FaceColor',obs_colour)
rectangle('Position',circle_pos1,'Curvature',circle_curv,'FaceColor',obs_colour)
rectangle('Position',circle_pos2,'Curvature',circle_curv,'FaceColor',obs_colour)
rectangle('Position',circle_pos3,'Curvature',circle_curv,'FaceColor',obs_colour)
rectangle('Position',circle_pos4,'Curvature',circle_curv,'FaceColor',obs_colour)

axis equal
axis([0 10 0 10]); hold on;
%end
%% 


