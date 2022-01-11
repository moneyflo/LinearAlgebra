%% Lecture 14 Orthogonal Vectors and subspaces

close all; clc;
drawArrow3 = @(c, v, varargin) quiver3(c(1), c(2), c(3), v(1), v(2), v(3), varargin{:});

% Row space and Null space
xyLim = 4;
A = [2 1 3;
     4 2 6];
AT = A';

ns = null(A);
c = [0 0 0]'; % origin

% row space vector
v1 = AT(:,1);
v2 = AT(:,2);

% null space special solutions
n1 = ns(:,1);
n2 = ns(:,2);

hold on
s = 1.5; % scale constant

% Column Vector Plot
h1 = drawArrow3(c, v1, 'linewidth', 3, 'color', 'm', 'MaxHeadSize', 0.4);
h2 = drawArrow3(c, v2, 'linewidth', 3, 'color', 'k', 'MaxHeadSize', 0.4);
h3 = plot3(s*[v1(1) -v1(1)], s*[v1(2) -v1(2)], s*[v1(3) -v1(3)], 'color', [0 0.54 0.54] , 'LineWidth', 2.5);

title('Row space and Null space', 'FontSize', 13);
xlabel('x axis', 'FontSize', 13);
ylabel('y axis', 'FontSize', 13);
zlabel('z axis', 'FontSize', 13);
% standard coordinate
drawArrow3(c, [1 0 0], 'linewidth', 2, 'color', 'r');
drawArrow3(c, [0 1 0], 'linewidth', 2, 'color', 'g');
drawArrow3(c, [0 0 1], 'linewidth', 2, 'color', 'b');
grid on
view(45, 30)
axis([-xyLim xyLim -xyLim xyLim -xyLim xyLim])

% vector for patch
s = 4;
pv1 = [n1(1) n2(1) -n1(1) -n2(1)]*s; % x points
pv2 = [n1(2) n2(2) -n1(2) -n2(2)]*s;
pv3 = [n1(3) n2(3) -n1(3) -n2(3)]*s;
h4 = patch(pv1, pv2, pv3, 'y');
legend([h1 h2 h3 h4], 'row1=[2 1 3]', 'row2=[4 2 6]', 'Row space', 'Null space');

set(gcf, 'color', 'w')
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all; close all; clc;

drawArrow = @(c, v, varargin) quiver([c(1) 0], [c(2) 0], [v(1)-c(1) 0], [v(2)-c(2) 0], 0, varargin{:});
xyLim = 4;
A = [2 1 3;
     4 2 6];
AT = A';

ns = null(A);
lns = null(AT);
c = [0 0]';

% column space
v1 = A(:,1);
v2 = A(:,2);
v3 = A(:,3);

hold on
s = 3;
% Column Vector Plot
h1 = drawArrow(c, v1, 'linewidth', 3, 'color', 'm', 'MaxHeadSize', 0.4);
h2 = drawArrow(c, v2, 'linewidth', 3, 'color', 'k', 'MaxHeadSize', 0.4);
h3 = drawArrow(c, v3, 'linewidth', 3, 'color', 'g', 'MaxHeadSize', 0.4);
h4 = plot(s*[v1(1) -v1(1)], s*[v1(2) -v1(2)], 'r', 'LineWidth', 2.5);

title('Column space and Left null space', 'FontSize', 13);
xlabel('x axis', 'FontSize', 13);
ylabel('y axis', 'FontSize', 13);
% zlabel('z axis', 'FontSize', 13);
% standard coordinate
drawArrow(c, [1 0], 'linewidth', 2, 'color', 'r');
drawArrow(c, [0 1], 'linewidth', 2, 'color', 'g');
grid on
view(45, 30)
axis([-xyLim xyLim -xyLim xyLim])

% draw left null space
s = 3;
h5 = plot(s*[lns(1) -lns(1)], s*[lns(2) -lns(2)], 'Color', [0 0.54 0.54], 'LineWidth', 2.5);
legend([h1 h2 h3 h4 h5], 'col1=[2 4]', 'col2=[1 2]', 'col3=[3 6]', 'Column space', 'Left Null space');
set(gcf, 'color', 'w')
hold off




