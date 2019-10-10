addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p6_condP_Invalid');
[x,fval] = patternsearch(statMod,[42.822,12.4559,1702.295],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p6_condP_Invalid/res/output_SecndPass_134.mat')