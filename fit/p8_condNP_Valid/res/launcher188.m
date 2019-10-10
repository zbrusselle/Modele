addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p8_condNP_Valid');
[x,fval] = patternsearch(statMod,[5.6737,32.4438,2525.8761],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p8_condNP_Valid/res/output_SecndPass_188.mat')