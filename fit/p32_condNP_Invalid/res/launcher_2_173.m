addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p32_condNP_Invalid');
[x,fval] = patternsearch(statMod,[3.8552,25.5077,820.452],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p32_condNP_Invalid/res/output_SecndPass_173.mat')