% condm.m

% Experiment in conditional probability.
% Simulates the rolling of two fair dice.

clear all;  close all;  clc;

% Number of rolls
n = 10000;

% Points shown on each die
p1 = ceil(6*rand(1,n));
p2 = ceil(6*rand(1,n));

% Define event A = first dice equals 3
a = ((p1) == 3);

% Define event B = sum of dice is less than 8
b = ((p1 + p2) < 8);

% Conditional probability Pr[A|B]
pab = sum(a & b)/n;     % Pr[AB]
pa = sum(a)/n;          % Pr[A]
pb = sum(b)/n;          % Pr[B]
pagb = pab/pb;
disp('Rolling of two fair dice:');
disp('A = first dice equals 3');
disp('B = sum of dice is less than 8');
disp(['Estimated probability Pr[A]              : ',num2str(pa)]);
disp(['Estimated conditional probability Pr[A|B]: ',num2str(pagb)]);
