addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p28_condNP_Invalid');
[x,fval] = patternsearch(statMod,[19.0629,38.4734,3706.5162],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p28_condNP_Invalid/res/output_FirstPass_15.mat')
