% baseratem.m

% Program to test the base rate fallacy.
% Little Jimmy Problem
%Pr[E|H] = 0.8
%Pr[E|H^c] = 0.5
%  Pr[H] = 0.1
clear all;  close all;  clc;

% Number of trials
n = 100000;

%(E|H)
eh = (rand(1,n) <= 0.8);

% (E|H^c)
ehc = (rand(1,n) <= 0.5);

% (H)
h = (rand(1,n) <= 0.1);


e = (eh & h) | (ehc & ~h);

% Conditional probability
%   Pr[H|E] = Pr[E|H]*Pr[H]/Pr[E] = Pr[EH]/Pr[E]
peh_h = sum(eh & h)/n;      % Pr[EH] 
pe = sum(e)/n;              % Pr[E]
phe = peh_h/pe;
disp(' ');
disp(['Estimated conditional probability Pr[H|E] = ',num2str(phe)]);
disp(' ');