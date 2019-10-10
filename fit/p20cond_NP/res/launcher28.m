addpath("D:\Scripts\Zoe_Scripts_MixedElectrodes\Modele_Nicolas");
lb = [0,0,0];
ub=[100,100,5000];
[x,fval] = patternsearch(@stat_model_go,[7.0516,6.0024,3307.8855],[],[],[],[],lb,ub);
save("D:\Scripts\Zoe_Scripts_MixedElectrodes\Modele_Nicolas\fit\p20cond_NP\res\output_FirstPass_28.mat")
