addpath("D:\Scripts\Zoe_Scripts_MixedElectrodes\Modele_Nicolas");
lb = [0,0,0];
ub=[100,100,5000];
[x,fval] = patternsearch(@stat_model_go,[53.6303,33.3647,1186.4698],[],[],[],[],lb,ub);
save("D:\Scripts\Zoe_Scripts_MixedElectrodes\Modele_Nicolas\fit\p20cond_NP\res\output_FirstPass_9.mat")
