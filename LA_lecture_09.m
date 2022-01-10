%% Lecture 9 Linear independence, span, basis, and dimension
clear all; close all; clc;

drawArrow = @(c, v, varargin) quiver([c(1) 0], [c(2) 0],[v(1)-c(1) 0], [v(2)-c(2) 0], 0, varargin{:});
xyLim = 2;

% Matrix A
A = [2 1 2.5;
    1 2 -1];
o = [0 0];

% Null space
c = null(A)

% Linear combination
v1 = c(1)*A(:,1);
v2 = c(2)*A(:,2);
v3 = c(3)*A(:,3);
lc = v1 + v2 + v3 % Linear combination result

xlabel('x axis', 'FontSize', 13);
ylabel('y axis', 'FontSize', 13);
title('Linear independence of A', 'FontSize', 13);

% x, y - axis base line, [x1, x2], [y1, y2]
line([-10, 10], [0 0], 'color', [0, 0, 0], 'LineWidth', 2); hold on % x-line
line([0, 0], [-10 10], 'color', [0, 0, 0], 'LineWidth', 2) % y-line

% Column Vector Plot
h1 = drawArrow(o, v1, 'linewidth', 3, 'color', 'b');
h2 = drawArrow(v1, v1+v2, 'linewidth', 3, 'color', 'r');
h3 = drawArrow(v1+v2, v1+v2+v3, 'linewidth', 3, 'color', 'g');

legend([h1 h2 h3], 'v1', 'v1+v2', 'v1+v2+v3');
axis([-xyLim xyLim -xyLim xyLim]) % drawing limit in equal
axis equal
hold off
set(gcf, 'color', 'w');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all; close all; clc;

drawArrow3 = @(c,v, varargin) quiver3(c(1), c(2), c(3), v(1), v(2), v(3), varargin{:});
xyLim = 4;
A = [1 2 3;
     1 2 3;
     2 5 7];

c = [0 0 0]'; % origin
v1 = A(:, 1);
v2 = A(:, 2);
v3 = A(:, 3);

hold on
% Column Vector Plot
h1 = drawArrow3(c, v1, 'lineWidth', 3, 'color', 'm', 'MaxHeadSize', 0.4);
h2 = drawArrow3(c, v2, 'lineWidth', 3, 'color', 'k', 'MaxHeadSize', 0.4);
h3 = drawArrow3(c, v3, 'lineWidth', 3, 'color', 'b', 'MaxHeadSize', 0.4);

title('Vector space Visualization', 'FontSize', 13);
xlabel('x axis', 'FontSize', 13);
ylabel('y axis', 'FontSize', 13);
zlabel('z axis', 'FontSize', 13);
drawArrow3(c, [1 0 0], 'linewidth', 2, 'color', 'r');
drawArrow3(c, [0 1 0], 'linewidth', 2, 'color', 'g');
drawArrow3(c, [0 0 1], 'linewidth', 2, 'color', 'b');
grid on
view(45, 30)
legend([h1 h2 h3], '[1 1 2]', '[2 2 5]', '[3 3 7]');
axis([-xyLim xyLim -xyLim xyLim -xyLim xyLim]) % boundary

% vector for patch
s = 2; % scale constant
pv1 = [v1(1) v3(1) v2(1) -v1(1) -v3(1) -v2(1)] * s;
pv2 = [v1(2) v3(2) v2(2) -v1(2) -v3(2) -v2(2)] * s;
pv3 = [v1(3) v3(3) v2(3) -v1(3) -v3(3) -v2(3)] * s;
patch(pv1, pv2, pv3, 'y');
set(gcf, 'color', 'w')
hold off



