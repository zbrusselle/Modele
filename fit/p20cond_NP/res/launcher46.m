addpath("D:\Scripts\Zoe_Scripts_MixedElectrodes\Modele_Nicolas");
lb = [0,0,0];
ub=[100,100,5000];
[x,fval] = patternsearch(@stat_model_go,[6.6243,33.3494,249.5279],[],[],[],[],lb,ub);
save("D:\Scripts\Zoe_Scripts_MixedElectrodes\Modele_Nicolas\fit\p20cond_NP\res\output_FirstPass_46.mat")
