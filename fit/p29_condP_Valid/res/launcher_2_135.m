addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p29_condP_Valid');
[x,fval] = patternsearch(statMod,[60.6524,3.0203,2983.9352],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p29_condP_Valid/res/output_SecndPass_135.mat')