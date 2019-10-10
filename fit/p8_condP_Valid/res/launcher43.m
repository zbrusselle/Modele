addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p8_condP_Valid');
[x,fval] = patternsearch(statMod,[44.0085,52.7143,2287.1218],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p8_condP_Valid/res/output_FirstPass_43.mat')
