% Lecture 15-2 Projection Matrix and subspaces
clear all; close all; clc;

drawArrow3 = @(c, v, varargin) quiver3(c(1), c(2), c(3), v(1), v(2), v(3), varargin{:});

% Overdetermined case
xyLim = 4;
A = [-3  2;
     -1  4;
      1 -3];
a1 = A(:,1);
a2 = A(:,2);
b = [1 1 2]';
c = [0 0 0]'; % origin

xh = inv(A'*A) * A'*b;
P = A*inv(A'*A)*A';
p = P*b;
e = b-p;

hold on
title('Projections', 'FontSize', 13);
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

s = 1.5; % scale constant
% Column Vector Plot
h1 = drawArrow3(c, a1, 'linewidth', 3, 'color', [1 0.5 0], 'MaxHeadSize', 0.4);
h2 = drawArrow3(c, a2, 'linewidth', 3, 'color', [0.53 0.8 0.92], 'MaxHeadSize', 0.4);
h3 = drawArrow3(c, b, 'linewidth', 3, 'color', 'b', 'MaxHeadSize', 0.4);
h4 = drawArrow3(c, p, 'linewidth', 3, 'color', 'g', 'MaxHeadSize', 0.4);
h5 = drawArrow3(p, e, 'linewidth', 3, 'color', [0.5 0 1], 'LineStyle', '--','MaxHeadSize', 0.2);

% Column space for patch
cs1 = A(:,1);
cs2 = A(:,2);
s = 1;
pv1 = [cs1(1) cs2(1) -cs1(1) -cs2(1)] * s;
pv2 = [cs1(2) cs2(2) -cs1(2) -cs2(2)] * s;
pv3 = [cs1(3) cs2(3) -cs1(3) -cs2(3)] * s;
h6 = patch(pv1, pv2, pv3, 'y');
legend([h1 h2 h3 h4 h5 h6], 'a1', 'a2', 'b', 'p', 'e', 'Column Space of A');

set(gcf, 'color', 'w')
hold off

