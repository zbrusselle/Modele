addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p29_condP_Valid');
[x,fval] = patternsearch(statMod,[58.4466,91.2831,384.7998],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p29_condP_Valid/res/output_FirstPass_10.mat')
