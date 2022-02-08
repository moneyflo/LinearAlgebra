% Lecture 20 Determinantand Volume
clear all; close all; clc;
drawArrow = @(c, v, varargin) quiver([c(1) 0], [c(2) 0], [v(1)-c(1) 0], [v(2)-c(2) 0], 0, varargin{:});
xyLim = 10;

A = [4 1; 2 3];

o = [0 0 ];

v1 = A(1,:);
v2 = A(2,:);
v12 = v1 + v2;
det(A)

xlabel('x axis', 'FontSize', 13);
ylabel('y axis', 'FontSize', 13);
title('Parallelogram', 'FontSize', 13);

line([-10, 10], [0 0], 'color', [0,0,0], 'LineWidth', 2); hold on
line([0, 0], [-10 10], 'color', [0,0,0], 'LineWidth', 2)
grid on

pv1 = [o(1) v1(1) v12(1) v2(1)];
pv2 = [o(2) v1(2) v12(2) v2(2)];
h5 = patch(pv1, pv2, 'y');

h1 = drawArrow(o, v1, 'linewidth', 3, 'color', 'r');
h2 = drawArrow(o, v2, 'linewidth', 3, 'color', 'g');
h3 = drawArrow(v2, v12, 'linewidth', 3, 'color', 'r', 'Linestyle', '--');
h4 = drawArrow(v1, v12, 'linewidth', 3, 'color', 'g', 'Linestlye', '--');
legend([h1 h2 h5], 'row1=[4 1]', 'row2=[2 3]', 'Area');
axis([-xyLim xyLim -xyLim xyLim])
set(gcf, 'color', 'w')
hold off






