addpath("D:\Scripts\Zoe_Scripts_MixedElectrodes\Modele_Nicolas");
lb = [0,0,0];
ub=[100,100,5000];
[x,fval] = patternsearch(@stat_model_go,[58.6041,22.7411,3923.2734],[],[],[],[],lb,ub);
save("D:\Scripts\Zoe_Scripts_MixedElectrodes\Modele_Nicolas\fit\p20cond_NP\res\output_FirstPass_7.mat")
