addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p29_condNP_Invalid');
[x,fval] = patternsearch(statMod,[70.6413,42.2964,4436.8007],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p29_condNP_Invalid/res/output_SecndPass_144.mat')