% baserate.m

% Program to test the base rate fallacy.
% Known information about a blood test:
% a) Pr[E|H] = 0.95, probability that test is positive
%      if person is infected;
% b) Pr[E|H^c] = 0.01, probability that test is positive
%      if person is NOT infected;
% c) Pr[H] = 0.005, probability of person being infected.

clear all;  close all;  clc;

% Number of trials
n = 100000;

% Event of test being positive for an infected person (E|H)
eh = (rand(1,n) <= 0.95);

% Event of test being positive for an uninfected person (E|H^c)
ehc = (rand(1,n) <= 0.01);

% Event of a person being infected person (H)
h = (rand(1,n) <= 0.005);

% Test is positive, regardless of whether the person is 
% infected or not (E):
% 1) test is positive given that the person is infected (E|H)
%    AND the person is infected (H);
% OR
% 2) test is positive given that the person is NOT infected (E|H^c)
%    AND the person is NOT infected (H^c)
e = (eh & h) | (ehc & ~h);

% Conditional probability
%   Pr[H|E] = Pr[E|H]*Pr[H]/Pr[E] = Pr[EH]/Pr[E]
peh_h = sum(eh & h)/n;      % Pr[EH] 
pe = sum(e)/n;              % Pr[E]
phe = peh_h/pe;
disp(' ');
disp(['Estimated conditional probability Pr[H|E] = ',num2str(phe)]);

disp(' ');