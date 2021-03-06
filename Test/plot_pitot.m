
%pitot1 = readtable('log08_Boardcore__SSCDRRN015PDAData.csv');
pitot2 = readtable('log09_Boardcore__SSCDRRN015PDAData.csv');
pitot3 = readtable('log10_Boardcore__SSCDRRN015PDAData.csv');

pressure2 = readtable('log09_Boardcore__MS5803Data.csv');
pressure3 = readtable('log10_Boardcore__MS5803Data.csv');

%pitot1.pressureTimestamp = pitot1.pressureTimestamp - pitot1.pressureTimestamp(1);
%pitot1.pressure = pitot1.pressure - pitot1.pressure(1);
pitot2.pressureTimestamp = pitot2.pressureTimestamp - pitot2.pressureTimestamp(1);
pitot2.pressure = pitot2.pressure ;%- pitot2.pressure(1);
pitot3.pressureTimestamp = pitot3.pressureTimestamp - pitot3.pressureTimestamp(1) - 400 * 1e6;
pitot3.pressure = pitot3.pressure ;%- pitot3.pressure(1);
pressure2.pressureTimestamp = pressure2.pressureTimestamp - pressure2.pressureTimestamp(1);
pressure3.pressureTimestamp = pressure3.pressureTimestamp - pressure3.pressureTimestamp(1) - 400*1e6;

figure
hold on
% plot(data.pressureTimestamp / 1e6, data.pressure);
%plot(pitot1.pressureTimestamp / 1e6, pitot1.pressure);
plot(pitot2.pressureTimestamp / 1e6, -pitot2.pressure);
plot(pitot3.pressureTimestamp / 1e6, -pitot3.pressure);
grid on
legend( 'Pitot 2', 'Pitot 3')


 figure
 hold on
 plot(pressure2.pressureTimestamp / 1e6, pressure2.pressure);
 plot(pressure3.pressureTimestamp / 1e6, pressure3.pressure);
 legend( 'Pitot 2', 'Pitot 3')