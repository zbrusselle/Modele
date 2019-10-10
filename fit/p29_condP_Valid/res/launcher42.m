addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p29_condP_Valid');
[x,fval] = patternsearch(statMod,[7.0895,21.2902,1294.4233],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p29_condP_Valid/res/output_FirstPass_42.mat')
