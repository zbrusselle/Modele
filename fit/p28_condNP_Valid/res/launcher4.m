addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p28_condNP_Valid');
[x,fval] = patternsearch(statMod,[35.3005,51.1266,3270.0171],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p28_condNP_Valid/res/output_FirstPass_4.mat')
