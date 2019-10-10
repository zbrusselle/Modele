addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p2_condNP_Valid');
[x,fval] = patternsearch(statMod,[10.3705,90.3481,3667.0958],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p2_condNP_Valid/res/output_SecndPass_104.mat')