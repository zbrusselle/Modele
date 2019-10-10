addpath("D:\Scripts\Zoe_Scripts_MixedElectrodes\Modele_Nicolas");
lb = [0,0,0];
ub=[100,100,5000];
[x,fval] = patternsearch(@stat_model_go,[8.0011,7.9354,361.8812],[],[],[],[],lb,ub);
save("D:\Scripts\Zoe_Scripts_MixedElectrodes\Modele_Nicolas\fit\p20cond_NP\res\output_FirstPass_20.mat")
