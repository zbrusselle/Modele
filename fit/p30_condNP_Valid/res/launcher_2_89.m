addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p30_condNP_Valid');
[x,fval] = patternsearch(statMod,[14.8054,57.7447,4892.098],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p30_condNP_Valid/res/output_SecndPass_89.mat')