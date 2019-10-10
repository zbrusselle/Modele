addpath("D:\Scripts\Zoe_Scripts_MixedElectrodes\Modele_Nicolas");
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,"p17cond_P_Valid");
[x,fval] = patternsearch(statMod,[58.7708,26.0603,4499.7293],[],[],[],[],lb,ub);
save("D:\Scripts\Zoe_Scripts_MixedElectrodes\Modele_Nicolas\fit\p17cond_P_Valid\res\output_FirstPass_1.mat")
