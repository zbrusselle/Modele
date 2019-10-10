addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p32_condNP_Valid');
[x,fval] = patternsearch(statMod,[6.5708,86.2786,2155.3306],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p32_condNP_Valid/res/output_SecndPass_78.mat')