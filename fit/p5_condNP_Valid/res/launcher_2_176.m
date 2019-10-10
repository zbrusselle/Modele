addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p5_condNP_Valid');
[x,fval] = patternsearch(statMod,[61.3097,24.7177,1777.3945],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p5_condNP_Valid/res/output_SecndPass_176.mat')