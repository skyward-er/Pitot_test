clc

%% pitot 2
%% 55
time=653.224;
offset=2;
[~,ind_f]=min(abs( pitot2.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot2.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot2.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot2.pressureTimestamp(ind_i:ind_f);
pressure=pitot2.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot2_55_cut=table(pressureTimestamp,pressure,index);
%% 50
time=616.534;
offset=2;
[~,ind_f]=min(abs( pitot2.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot2.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot2.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot2.pressureTimestamp(ind_i:ind_f);
pressure=pitot2.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot2_50_cut=table(pressureTimestamp,pressure,index);
%% 45
time=565.905;
offset=2;
[~,ind_f]=min(abs( pitot2.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot2.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot2.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot2.pressureTimestamp(ind_i:ind_f);
pressure=pitot2.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot2_45_cut=table(pressureTimestamp,pressure,index);
%% 40
time=513.045;
offset=2;
[~,ind_f]=min(abs( pitot2.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot2.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot2.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot2.pressureTimestamp(ind_i:ind_f);
pressure=pitot2.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot2_40_cut=table(pressureTimestamp,pressure,index);
%% 35
time=438.687;
offset=2;
[~,ind_f]=min(abs( pitot2.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot2.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot2.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot2.pressureTimestamp(ind_i:ind_f);
pressure=pitot2.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot2_35_cut=table(pressureTimestamp,pressure,index);
%% 30
time=386.462;
offset=2;
[~,ind_f]=min(abs( pitot2.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot2.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot2.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot2.pressureTimestamp(ind_i:ind_f);
pressure=pitot2.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot2_30_cut=table(pressureTimestamp,pressure,index);
%% 25
time=340.430;
offset=2;
[~,ind_f]=min(abs( pitot2.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot2.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot2.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot2.pressureTimestamp(ind_i:ind_f);
pressure=pitot2.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot2_25_cut=table(pressureTimestamp,pressure,index);
%% 20
time=293.906;
offset=2;
[~,ind_f]=min(abs( pitot2.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot2.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot2.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot2.pressureTimestamp(ind_i:ind_f);
pressure=pitot2.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot2_20_cut=table(pressureTimestamp,pressure,index);
%% 15
time=244.027;
offset=2;
[~,ind_f]=min(abs( pitot2.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot2.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot2.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot2.pressureTimestamp(ind_i:ind_f);
pressure=pitot2.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot2_15_cut=table(pressureTimestamp,pressure,index);
%% 10
time=196.765;
offset=2;
[~,ind_f]=min(abs( pitot2.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot2.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot2.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot2.pressureTimestamp(ind_i:ind_f);
pressure=pitot2.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot2_10_cut=table(pressureTimestamp,pressure,index);
%% 5
time=144.763;
offset=2;
[~,ind_f]=min(abs( pitot2.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot2.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot2.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot2.pressureTimestamp(ind_i:ind_f);
pressure=pitot2.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot2_5_cut=table(pressureTimestamp,pressure,index);


%% concatenamento

pitot2_pressure_conc=[pitot2_5_cut.pressure; pitot2_10_cut.pressure; pitot2_15_cut.pressure; pitot2_20_cut.pressure; ...
    pitot2_25_cut.pressure; pitot2_30_cut.pressure; pitot2_35_cut.pressure; pitot2_40_cut.pressure; pitot2_45_cut.pressure; ...
    pitot2_50_cut.pressure; pitot2_55_cut.pressure;];
figure()
plot(1:length(pitot2_pressure_conc),pitot2_pressure_conc);
title('pitot 2')


%% pitot 3
%% 55
time=627.90;
offset=2;
[~,ind_f]=min(abs( pitot3.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot3.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot3.pressureTimestamp-((time-offset-15)*1e6) ) )

pressureTimestamp=pitot3.pressureTimestamp(ind_i:ind_f);
pressure=pitot3.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot3_55_cut=table(pressureTimestamp,pressure,index);
%% 50
time=601.19;
offset=2;
[~,ind_f]=min(abs( pitot3.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot3.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot3.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot3.pressureTimestamp(ind_i:ind_f);
pressure=pitot3.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot3_50_cut=table(pressureTimestamp,pressure,index);
%% 45
time=558.08;
offset=2;
[~,ind_f]=min(abs( pitot3.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot3.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot3.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot3.pressureTimestamp(ind_i:ind_f);
pressure=pitot3.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot3_45_cut=table(pressureTimestamp,pressure,index);
%% 40
time=527.726;
offset=2;
[~,ind_f]=min(abs( pitot3.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot3.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot3.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot3.pressureTimestamp(ind_i:ind_f);
pressure=pitot3.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot3_40_cut=table(pressureTimestamp,pressure,index);
%% 35
time=477.091;
offset=2;
[~,ind_f]=min(abs( pitot3.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot3.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot3.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot3.pressureTimestamp(ind_i:ind_f);
pressure=pitot3.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot3_35_cut=table(pressureTimestamp,pressure,index);
%% 30
time=434.989;
offset=2;
[~,ind_f]=min(abs( pitot3.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot3.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot3.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot3.pressureTimestamp(ind_i:ind_f);
pressure=pitot3.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot3_30_cut=table(pressureTimestamp,pressure,index);
%% 25
time=394.759;
offset=2;
[~,ind_f]=min(abs( pitot3.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot3.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot3.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot3.pressureTimestamp(ind_i:ind_f);
pressure=pitot3.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot3_25_cut=table(pressureTimestamp,pressure,index);
%% 20

time=344.736;
offset=2;
[~,ind_f]=min(abs( pitot3.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot3.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot3.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot3.pressureTimestamp(ind_i:ind_f);
pressure=pitot3.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot3_20_cut=table(pressureTimestamp,pressure,index);
%% 15
time=283.932;  
offset=2;
[~,ind_f]=min(abs( pitot3.pressureTimestamp-((time-offset)*1e6) ) )
% find(pitot3.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot3.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot3.pressureTimestamp(ind_i:ind_f);
pressure=pitot3.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot3_15_cut=table(pressureTimestamp,pressure,index);
%% 10
time=200;
offset=2;
[~,ind_f]=min(abs( pitot3.pressureTimestamp-((time-offset)*1e6) ) )
find(pitot3.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot3.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot3.pressureTimestamp(ind_i:ind_f);
pressure=pitot3.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot3_10_cut=table(pressureTimestamp,pressure,index);
%% 5
time=144.763;
offset=2;
[~,ind_f]=min(abs( pitot3.pressureTimestamp-((time-offset)*1e6) ) )
find(pitot3.pressureTimestamp==(651*1e6))



[~,ind_i]=min(abs( pitot3.pressureTimestamp-((time-offset-20)*1e6) ) )

pressureTimestamp=pitot3.pressureTimestamp(ind_i:ind_f);
pressure=pitot3.pressure(ind_i:ind_f);
index=ind_i:ind_f;
index=index';
pitot3_5_cut=table(pressureTimestamp,pressure,index);


%% concatenamento

pitot3_pressure_conc=[ pitot3_15_cut.pressure; pitot3_20_cut.pressure; ...
    pitot3_25_cut.pressure; pitot3_30_cut.pressure; pitot3_35_cut.pressure; pitot3_40_cut.pressure; pitot3_45_cut.pressure; ...
    pitot3_50_cut.pressure; pitot3_55_cut.pressure;];
figure()
plot(1:length(pitot3_pressure_conc),pitot3_pressure_conc);
title('pitot 3')




%% medie pitot2

pitot2_5_mean=mean(pitot2_5_cut.pressure);
pitot2_10_mean=mean(pitot2_10_cut.pressure);
pitot2_15_mean=mean(pitot2_15_cut.pressure);
pitot2_20_mean=mean(pitot2_20_cut.pressure);
pitot2_25_mean=mean(pitot2_25_cut.pressure);
pitot2_30_mean=mean(pitot2_30_cut.pressure);
pitot2_35_mean=mean(pitot2_35_cut.pressure);
pitot2_40_mean=mean(pitot2_40_cut.pressure);
pitot2_45_mean=mean(pitot2_45_cut.pressure);
pitot2_50_mean=mean(pitot2_50_cut.pressure);
pitot2_55_mean=mean(pitot2_55_cut.pressure);

pitot2_means=[pitot2_5_mean; pitot2_10_mean; pitot2_15_mean; pitot2_20_mean; ...
    pitot2_25_mean; pitot2_30_mean; pitot2_35_mean; pitot2_40_mean; pitot2_45_mean; ...
    pitot2_50_mean; pitot2_55_mean;]

v2=[5;10;15;20;25;30;35;40;45;50;55];

figure()
plot(v2,pitot2_means)

title('pitot 2 means')

%% medie pitot3

pitot3_5_mean=mean(pitot3_5_cut.pressure);
pitot3_10_mean=mean(pitot3_10_cut.pressure);
pitot3_15_mean=mean(pitot3_15_cut.pressure);
pitot3_20_mean=mean(pitot3_20_cut.pressure);
pitot3_25_mean=mean(pitot3_25_cut.pressure);
pitot3_30_mean=mean(pitot3_30_cut.pressure);
pitot3_35_mean=mean(pitot3_35_cut.pressure);
pitot3_40_mean=mean(pitot3_40_cut.pressure);
pitot3_45_mean=mean(pitot3_45_cut.pressure);
pitot3_50_mean=mean(pitot3_50_cut.pressure);
pitot3_55_mean=mean(pitot3_55_cut.pressure);

pitot3_means=[pitot3_5_mean; pitot3_10_mean;pitot3_15_mean; pitot3_20_mean; ...
    pitot3_25_mean; pitot3_30_mean; pitot3_35_mean; pitot3_40_mean; pitot3_45_mean; ...
    pitot3_50_mean; pitot3_55_mean;]

v3=[5;10;15;20;25;30;35;40;45;50;55];

figure()
plot(v3,pitot3_means)
title('pitot 3 means')

figure()
plot(v2,pitot2_means,v3,pitot3_means)
title('pitot 2 and 3 means')


%% deviations pitot2

pitot2_std_5=std(pitot2_5_cut.pressure);
pitot2_std_10=std(pitot2_10_cut.pressure);
pitot2_std_15=std(pitot2_15_cut.pressure);
pitot2_std_20=std(pitot2_20_cut.pressure);
pitot2_std_25=std(pitot2_25_cut.pressure);
pitot2_std_30=std(pitot2_30_cut.pressure);
pitot2_std_35=std(pitot2_35_cut.pressure);
pitot2_std_40=std(pitot2_40_cut.pressure);
pitot2_std_45=std(pitot2_45_cut.pressure);
pitot2_std_50=std(pitot2_50_cut.pressure);
pitot2_std_55=std(pitot2_55_cut.pressure);

pitot2_stds=[pitot2_std_5; pitot2_std_10; pitot2_std_15; pitot2_std_20; pitot2_std_25; ...
    pitot2_std_30; pitot2_std_35; pitot2_std_40; pitot2_std_45; pitot2_std_50; pitot2_std_55;];

pitot2_std_mean=mean(pitot2_stds)

%% deviations pitot3

pitot3_std_5=std(pitot3_5_cut.pressure);
pitot3_std_10=std(pitot3_10_cut.pressure);
pitot3_std_15=std(pitot3_15_cut.pressure);
pitot3_std_20=std(pitot3_20_cut.pressure);
pitot3_std_25=std(pitot3_25_cut.pressure);
pitot3_std_30=std(pitot3_30_cut.pressure);
pitot3_std_35=std(pitot3_35_cut.pressure);
pitot3_std_40=std(pitot3_40_cut.pressure);
pitot3_std_45=std(pitot3_45_cut.pressure);
pitot3_std_50=std(pitot3_50_cut.pressure);
pitot3_std_55=std(pitot3_55_cut.pressure);

pitot3_stds=[pitot3_std_5; pitot3_std_10;pitot3_std_15; pitot3_std_20; pitot3_std_25; ...
    pitot3_std_30; pitot3_std_35; pitot3_std_40; pitot3_std_45; pitot3_std_50; pitot3_std_55;];

pitot3_std_mean=mean(pitot3_stds)

%%
means=pitot2_means;
stds=pitot2_stds;
pitot2_stat=table(means,stds);

means=pitot3_means;
stds=pitot3_stds;
pitot3_stat=table(means,stds);



