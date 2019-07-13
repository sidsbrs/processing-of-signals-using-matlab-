
% V7_3b  Computing 8 point FFT with zero padding

%%% Developed by Dr. M. Venu Gopala Rao, 
%%% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

%-----------------------------------------------------------------------
clear all; close all; clc;

% % Case2:  N = 8;                  

% x = [1,1,1,1,0,0,0,0];
x = [1,1,1,1,zeros(1,4)];
N = 8;                
n = 0:N-1;              % Time axis 

X = fft(x,N);
k = 0:N-1;              % Frequency axis 
magX = abs(X); phaX = angle(X)*180/pi;

% Plot the frequency response

subplot(3,1,1); stem(n,x,'r','fill','LineWidth',1.5); grid
xlabel('n---->'); ylabel('Magnitude---->');
title('Original Sequence'); 
axis([-1 8 -0.2 1.2]);

subplot(3,1,2); stem(k,magX,'b','fill','LineWidth',1.5); hold on;
plot(k,magX,'--k','LineWidth',1);
xlabel('frequency K ---->'); ylabel('Magnitude ---->') ;
title('Magnitude Spectrum'); grid
axis([-1 N -0.2 max(magX)+1]);

subplot(3,1,3); stem(k,phaX,'m','fill','LineWidth',1.5);hold on;
plot(k,phaX,'--k','LineWidth',1);
xlabel('frequency K ---->');  ylabel('Radians---->');
title('Phase Spectrum');grid
axis([-1 N  min(phaX)-10   max(phaX)+10]);

