% Lecture 17 Gram-Schmidt Process
% 2D subspace
clear all; close all; clc;

drawArrow3 = @(c, v, varargin) quiver3(c(1), c(2), c(3), v(1), v(2), v(3), varargin{:});

xyLim = 4;
A = [-3  2;
     -1  4;
      1 -3];
a = A(:,1);
b = A(:,2);
o = [0 0 0]';

q1 = a;
q2 = b - ((q1'*b)/(q1'*q1))*q1;

q1 = q1/norm(q1);
q2 = q2/norm(q2);

hold on
title('Gram-Schmidt 2D-subspace in R3', 'FontSize', 13);
xlabel('x axis', 'FontSize', 13);
ylabel('y axis', 'FontSize', 13);
zlabel('z axis', 'FontSize', 13);

grid on
view(45, 30)
axis([-xyLim xyLim -xyLim xyLim -xyLim xyLim])

s = 1.2;
% Column Vector Plot
h1 = drawArrow3(o, a, 'linewidth', 3, 'color', [1 0 0], 'MaxHeadSize', 0.4);
h2 = drawArrow3(o, b, 'linewidth', 3, 'color', [0 1 0], 'MaxHeadSize', 0.4);

h3 = drawArrow3(o, q1, 'linewidth', 5, 'color', [0.8 0.3 1], 'MaxHeadSize', 0.4);
h4 = drawArrow3(o, q2, 'linewidth', 5, 'color', [0 1 1], 'MaxHeadSize', 0.4);

% column space for patch
pv1 = [a(1) b(1) -a(1) -b(1)]*s;
pv2 = [a(2) b(2) -a(2) -b(2)]*s;
pv3 = [a(3) b(3) -a(3) -b(3)]*s;
h5 = patch(pv1, pv2, pv3, 'y');
legend([h1 h2 h3 h4 h5], 'a', 'b', 'q1', 'q2', 'column space')

set(gcf, 'color', 'w')
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 3D space
clear all; close all; clc;

drawArrow3 = @(c, v, varargin) quiver3(c(1), c(2), c(3), v(1), v(2), v(3), varargin{:});

xyLim = 4;
A = [-3  2 1;
     -1  4 1;
      1 -3 1];
a = A(:,1);
b = A(:,2);
c = A(:,3);
o = [0 0 0]';

q1 = a;
q2 = b - ((q1'*b)/(q1'*q1))*q1;
q3 = c - ((q1'*c)/(q1'*q1))*q1 - ((q2'*c)/(q2'*q2))*q2;

q1 = q1/norm(q1);
q2 = q2/norm(q2);
q3 = q3/norm(q3);

hold on
title('Gram-Schmidt 3D-subspace in R3', 'FontSize', 13);
xlabel('x axis', 'FontSize', 13);
ylabel('y axis', 'FontSize', 13);
zlabel('z axis', 'FontSize', 13);

grid on
view(45, 30)
axis([-xyLim xyLim -xyLim xyLim -xyLim xyLim])

s = 1.2;
% Column Vector Plot
h1 = drawArrow3(o, a, 'linewidth', 3, 'color', [1 0 0], 'MaxHeadSize', 0.4);
h2 = drawArrow3(o, b, 'linewidth', 3, 'color', [0 1 0], 'MaxHeadSize', 0.4);
h3 = drawArrow3(o, c, 'linewidth', 3, 'color', [0 0 1], 'MaxHeadSize', 0.4);

h4 = drawArrow3(o, q1, 'linewidth', 5, 'color', [0 1 1], 'MaxHeadSize', 0.4);
h5 = drawArrow3(o, q2, 'linewidth', 5, 'color', [0.8 0.3 0], 'MaxHeadSize', 0.4);
h6 = drawArrow3(o, q3, 'linewidth', 5, 'color', [1 0 1], 'MaxHeadSize', 0.4);

legend([h1 h2 h3 h4 h5 h6], 'a', 'b', 'c', 'q1', 'q2', 'q3');

set(gcf, 'color', 'w')
hold off