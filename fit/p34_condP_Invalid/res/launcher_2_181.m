addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p34_condP_Invalid');
[x,fval] = patternsearch(statMod,[7.2672,90.0372,2355.3419],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p34_condP_Invalid/res/output_SecndPass_181.mat')