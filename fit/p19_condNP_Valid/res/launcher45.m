addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p19_condNP_Valid');
[x,fval] = patternsearch(statMod,[23.8559,40.4514,4952.7951],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p19_condNP_Valid/res/output_FirstPass_45.mat')
