addpath("D:\Scripts\Zoe_Scripts_MixedElectrodes\Modele_Nicolas");
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,"p17cond_P_Valid");
[x,fval] = patternsearch(statMod,[30.9802,63.3439,112.962],[],[],[],[],lb,ub);
save("D:\Scripts\Zoe_Scripts_MixedElectrodes\Modele_Nicolas\fit\p17cond_P_Valid\res\output_FirstPass_5.mat")
