% Lecture 16 Projection and Least Square
clear all; close all; clc;
drawArrow = @(c, v, varargin) quiver([c(1) 0], [c(2) 0], [v(1)-c(1) 0], [v(2)-c(2) 0], 0, varargin{:});

% Overdetermined case
xyLim = 3.5;
A = [1 1;
     2 1;
     3 1];
a1 = A(:,1);
a2 = A(:,2);
b = [1 2 2]';
o = [0 0 0]';

% solution
xh = inv(A'*A) * A'*b;
c = xh(1);
d = xh(2);

t = A(:,1);
p = c*t + d;
e = b - p;

% Plot
x = [-xyLim 0 xyLim];
y = c*x + d;
plot(x, y, 'r', 'color', [0.5 0 0.5], 'LineWidth', 2.0);
hold on
plot(a1, b, 'r.', 'MarkerSize', 16)
plot(a1, p, 'b.', 'MarkerSize', 16)

% error lines
line([a1(1), a1(1)], [b(1) p(1)], 'color', [0,1,0], 'LineWidth', 2)
line([a1(2), a1(2)], [b(2) p(2)], 'color', [0,1,0], 'LineWidth', 2)
line([a1(3), a1(3)], [b(3) p(3)], 'color', [0,1,0], 'LineWidth', 2)

% Ploting
xlabel('x axis', 'FontSize', 13);
ylabel('y axis', 'FontSize', 13);
title('Least Square Method', 'FontSize', 13);

line([-xyLim, xyLim], [0 0], 'color', [0, 0, 0], 'LineWidth', 2)
line([0, 0], [-xyLim xyLim], 'color', [0, 0, 0], 'LineWidth', 2)

axis([-xyLim xyLim -xyLim xyLim])

legend('L.S Line', 'b', 'p', 'error');

hold off
set(gcf, 'color', 'w')



