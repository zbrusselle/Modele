addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p7_condNP_Valid');
[x,fval] = patternsearch(statMod,[13.9203,37.2702,4986.3084],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p7_condNP_Valid/res/output_SecndPass_167.mat')