
% 
% V9_1a.m Order of Analog Butterworth and Chebyshev LPF

% Low-pass Filter
%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

clear all;close all;clc;

format long

% rp = input('enter the passband ripple');
% rs = input('enter the stopband ripple');
% fpass = input('enter the passband freq');
% fstop = input('enter the stopband freq');
% fs = input('enter the sampling freq');

rp = 0.15;
rs = 60;
fpass = 1500;  %  Hz
fstop = 3000;  %  Hz
fs = 7000;     %  Hz

w1 = 2*fpass/fs;w2=2*fstop/fs;
[bn,wnb] = buttord(w1,w2,rp,rs);
[c1n, wnc1] = cheb1ord(w1, w2, rp, rs);
[c2n, wnc2] = cheb2ord(w1, w2, rp, rs);

display('Order of the Butterworth filter');
bn
display('Order of the Chebyshev-1 filter');
c1n
display('Order of the Chebyshev-2 filter');
c2n

