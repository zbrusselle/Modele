addpath('/network/lustre/iss01/home/zoe.brusselle');
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,'p31_condNP_Valid');
[x,fval] = patternsearch(statMod,[7.7967,98.674,3098.5623],[],[],[],[],lb,ub);
save('/network/lustre/iss01/home/zoe.brusselle/fit/p31_condNP_Valid/res/output_SecndPass_41.mat')