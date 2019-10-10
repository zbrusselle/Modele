addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p28_condP_Valid');
[x,fval] = patternsearch(statMod,[92.2313,66.6418,483.1671],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p28_condP_Valid/res/output_SecndPass_166.mat')