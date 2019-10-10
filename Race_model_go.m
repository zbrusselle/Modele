function [RTs_GO,INH_] = Race_model_go(a,g)

%disp(['Race_model_go']);
%INIT vars
INH_=[];

%set default vars
max_time_trial=3000;
x=linspace(0, max_time_trial, max_time_trial);
N_trial=g;
Threshold_ = a(3);
Delay_go = 100;
Weight_go=1;
Weight_switch=1;
mu_go= a(1);
mu_switch = 0;
sigma_go=a(2);
sigma_switch=0;

signal=[];
signal2=[];
%% RACE
for t =1:N_trial
        flag=0;
        %add delay padding signals with 0
        signal(1:Delay_go)=0;
        signal2(1:Delay_go)=0;
        
        while flag == 0
            for d = Delay_go+1:(length(x)-Delay_go)
                
                noise_go = normrnd(mu_go,sigma_go, 1);
                noise_switch = normrnd(mu_switch, sigma_switch, 1);
                
                signal(d)=(signal(d-1)+(noise_go - (Weight_switch*signal2(d-1))));
                if d<= 3000
                    signal2(d)=0;
                else
                    signal2(d)=(signal2(d-1)+(noise_switch - (Weight_go*signal(d-1))));
                end
                %Replace non-physiological negative values by 0
                if signal(d)<0
                    signal(d)=0;
                end
                if signal2(d)<0
                    signal2(d)=0;
                end
                if (signal(d)>Threshold_) || (signal2(d)>Threshold_)
                    flag = 1;
                    break
                end
            end
        end
        
        for q=1:length(signal)
            if (signal(q) > Threshold_)
                RTs_GO(t)=q;
            end
        end
        
    flag=0;
    signal=[];
    signal2=[];
end



%Trick: if there's no latencies, fill with N_trial values of max_time_trial
%If not, khi2 test will return NaN value when compare latency distributions

if isempty(RTs_GO)
    RTs_GO{1:N_trial*4}=max_time_trial;
end

end
