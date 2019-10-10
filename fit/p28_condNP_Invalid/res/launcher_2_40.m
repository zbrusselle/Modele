addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p28_condNP_Invalid');
[x,fval] = patternsearch(statMod,[9.1313,85.6409,3353.0162],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p28_condNP_Invalid/res/output_SecndPass_40.mat')