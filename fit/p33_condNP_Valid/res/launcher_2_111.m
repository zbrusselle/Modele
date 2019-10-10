addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p33_condNP_Valid');
[x,fval] = patternsearch(statMod,[17.8866,92.2986,4083.2467],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p33_condNP_Valid/res/output_SecndPass_111.mat')