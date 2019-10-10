addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p29_condNP_Invalid');
[x,fval] = patternsearch(statMod,[66.589,9.7121,4222.2093],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p29_condNP_Invalid/res/output_SecndPass_126.mat')