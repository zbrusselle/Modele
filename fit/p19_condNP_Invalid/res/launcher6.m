addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p19_condNP_Invalid');
[x,fval] = patternsearch(statMod,[85.7525,21.184,4088.0109],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p19_condNP_Invalid/res/output_FirstPass_6.mat')