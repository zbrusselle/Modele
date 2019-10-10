addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p19_condP_Invalid');
[x,fval] = patternsearch(statMod,[30.6097,92.1137,2064.8886],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p19_condP_Invalid/res/output_FirstPass_40.mat')
