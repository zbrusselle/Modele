addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p31_condP_Valid');
[x,fval] = patternsearch(statMod,[13.2548,37.8855,2961.963],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p31_condP_Valid/res/output_SecndPass_149.mat')