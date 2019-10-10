addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p22_condNP_Valid');
[x,fval] = patternsearch(statMod,[6.9145,20.685,2533.8501],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p22_condNP_Valid/res/output_SecndPass_48.mat')