addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p1_condNP_Valid');
[x,fval] = patternsearch(statMod,[86.2711,48.4297,4224.2784],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p1_condNP_Valid/res/output_FirstPass_13.mat')
