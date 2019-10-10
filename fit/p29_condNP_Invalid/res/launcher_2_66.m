addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p29_condNP_Invalid');
[x,fval] = patternsearch(statMod,[0.30226,73.1363,1301.9486],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p29_condNP_Invalid/res/output_SecndPass_66.mat')