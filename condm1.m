% condm1.m

% Experiment in conditional probability.
% Simulates the rolling of two fair dice.

clear all;  close all;  clc;

% Number of rolls
n = 10000;

% Points shown on each die
p1 = ceil(6*rand(1,n));
p2 = ceil(6*rand(1,n));

% Define event A = product of dice is at least 15
a = (p1 .* p2)==15;

% Define event B = second dice does not equal 5
b = ((p2) ~= 5);

% Conditional probability Pr[A|B]
pab = sum(a & b)/n;     % Pr[AB]
pa = sum(a)/n;          % Pr[A]
pb = sum(b)/n;          % Pr[B]
pagb = pab/pb;
disp('Rolling of two fair dice:');
disp('A = product of dice is at least 15');
disp('B = second dice does not equal 5');
disp(['Estimated probability Pr[A]              : ',num2str(pa)]);
disp(['Estimated conditional probability Pr[A|B]: ',num2str(pagb)]);
