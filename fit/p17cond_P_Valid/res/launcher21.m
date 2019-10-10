addpath("D:\Scripts\Zoe_Scripts_MixedElectrodes\Modele_Nicolas");
lb = [0,0,0];
ub=[100,100,5000];
statMod = @(input) stat_model_go(input,"p17cond_P_Valid");
[x,fval] = patternsearch(statMod,[11.3691,73.4481,4450.112],[],[],[],[],lb,ub);
save("D:\Scripts\Zoe_Scripts_MixedElectrodes\Modele_Nicolas\fit\p17cond_P_Valid\res\output_FirstPass_21.mat")
