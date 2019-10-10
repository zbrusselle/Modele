addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p29_condNP_Valid');
[x,fval] = patternsearch(statMod,[87.7197,78.5378,3065.9454],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p29_condNP_Valid/res/output_FirstPass_44.mat')
