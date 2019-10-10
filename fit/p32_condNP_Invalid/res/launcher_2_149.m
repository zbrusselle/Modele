addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p32_condNP_Invalid');
[x,fval] = patternsearch(statMod,[76.8754,16.7154,4309.8024],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p32_condNP_Invalid/res/output_SecndPass_149.mat')