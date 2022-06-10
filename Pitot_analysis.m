%% Pitot analysis and plots
clear all
close all
clc

%% Load Data

load('Pitot_extracted_data.mat');
load('processed_wind.mat');

%% Dynamic Pressure offset

offset = -193.27;

% deviazione onda quadra elettronica
dev_quad = 60;


%% Plots

%% Pitot 2

pitot2_stat.means = pitot2_stat.means - offset;

% Dynamic Pressure
figure()
hold on
plot(Vms_2,pitot2_stat.means,'LineWidth',2)
plot(Vms_2,Pdin_2,'LineWidth',2)
plot(Vms_2,(pitot2_stat.means + pitot2_stat.stds +dev_quad), Vms_2,(pitot2_stat.means - pitot2_stat.stds - dev_quad))
legend('Pitot 2','Real Dp2','Dev pos','Dev neg')
grid on
xlabel('Wind Speed [m/s]')
ylabel('Dynamic Pressure [Pa]')
title('Pitot 2 Dynamic Pressure')

% Velocity 


pitot2_stat.vel = sqrt(pitot2_stat.means.*2./Rho_2');
pitot2_stat.vel_p = sqrt( (pitot2_stat.means + pitot2_stat.stds + dev_quad ).*2./Rho_2');
pitot2_stat.vel_n = sqrt( (pitot2_stat.means - pitot2_stat.stds - dev_quad).*2./Rho_2');

figure()
hold on
plot(Vms_2,pitot2_stat.vel,'LineWidth',2)
plot(Vms_2,Vms_2,'LineWidth',2)
plot(Vms_2,pitot2_stat.vel_p)
plot(Vms_2,pitot2_stat.vel_n)
legend('Pitot 2','Real Vel','Dev pos','Dev neg')
grid on
xlabel('Wind Speed [m/s]')
ylabel('Wind Speed Calculated [m/s]')
title('Pitot 2 Vel')



%% Pitot 3

pitot3_stat.means = pitot3_stat.means - offset;




figure()
hold on
plot(Vms_1_rip,pitot3_stat.means,'LineWidth',2)
plot(Vms_1_rip,Pdin_1_rip,'LineWidth',2)
plot(Vms_2,(pitot2_stat.means + pitot2_stat.stds + dev_quad), Vms_2,(pitot2_stat.means - pitot2_stat.stds - dev_quad))
legend('Pitot 3','Real Dp3','Dev pos','Dev neg')
grid on
xlabel('Wind Speed [m/s]')
ylabel('Dynamic Pressure [Pa]')
title('pitot 3')

% Velocity 

pitot3_stat.vel = sqrt(pitot3_stat.means.*2./Rho_1_rip');
pitot3_stat.vel_p = sqrt( (pitot3_stat.means + pitot3_stat.stds + dev_quad ).*2./Rho_1_rip');
pitot3_stat.vel_n = sqrt( (pitot3_stat.means - pitot3_stat.stds - dev_quad).*2./Rho_1_rip');


figure()
hold on
plot(Vms_1_rip,pitot3_stat.vel,'LineWidth',2)
plot(Vms_1_rip,Vms_1_rip,'LineWidth',2)
plot(Vms_1_rip,pitot3_stat.vel_p)
plot(Vms_1_rip,pitot3_stat.vel_n)
legend('Pitot 2','Real Vel','Dev pos','Dev neg')
grid on
xlabel('Wind Speed [m/s]')
ylabel('Wind Speed Calculated [m/s]')
title('Pitot 3 Vel')




% Pitot 2 and 3
figure()
hold on
plot(Vms_2,pitot2_stat.means,'LineWidth',2)
plot( Vms_2,Pdin_2,'LineWidth',2);
plot(Vms_1_rip,pitot3_stat.means,'LineWidth',2);
legend('Pitot 2','Real Dp2','Pitot 3')
grid on
xlabel('Wind Speed [m/s]')
ylabel('Dynamic Pressure [m/s]')
title('pitot 2 and 3 pressure')

figure()
hold on
plot(Vms_2,pitot2_stat.vel,'LineWidth',2)
plot(Vms_2,Vms_2,'LineWidth',2)
plot(Vms_1_rip,pitot3_stat.vel,'LineWidth',2)
legend('Pitot 2','Real Vel','Pitot 3')
grid on
xlabel('Wind Speed [m/s]')
ylabel('Calculated Speed [m/s]')
title('pitot 2 and 3 Speed')

