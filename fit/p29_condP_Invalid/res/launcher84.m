addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p29_condP_Invalid');
[x,fval] = patternsearch(statMod,[40.9169,11.271,895.9004],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p29_condP_Invalid/res/output_SecndPass_84.mat')