addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p5_condNP_Invalid');
[x,fval] = patternsearch(statMod,[91.7494,71.3574,3091.6869],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p5_condNP_Invalid/res/output_FirstPass_34.mat')
