% Lecture 15-1 Ax=b, solution exists in overdetermined system
clear all; close all; clc;

A = [1 1 2;
     3 4 1;
     3 7 1;
     4 2 3];

% Best solution for overdetermined equation

b = [11 2 -7 21]';

ATA = A'*A;
ATb = A'*b;

xh = ATA\ATb;
bh = A*xh;

bh
b

% when the solution exists in overdetermined equation
b = A(:,1) + A(:,2) - A(:,3);  % b is in the column space

ATA = A'*A;
ATb = A'*b;

% \를 통해서도 해를 구할 수 있음
% x = AT\Ab

% xh = inv(ATA)*ATb;
xh = ATA\ATb;
bh = A*xh;

bh
b

% Not invertible case

A(:,3) = A(:,1) + A(:,2);
b = [11 2 -7 21]';

ATA = A'*A;
ATb = A'*b;

xh = ATA\ATb;
bh = A*xh;

bh
b