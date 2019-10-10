function khi_global = stat_model_go(a, path2RT)
    if exist(['/network/lustre/iss01/home/zoe.brusselle/RT4model/' path2RT '.mat'], 'file')
        %disp(['stat_model_go for ' path2RT]);
        load(['/network/lustre/iss01/home/zoe.brusselle/RT4model/' path2RT '.mat']);

        RT_ = RT;% RT's from subject
        % remove abnormal RTs
    %     RT_(RT_<100)=0;
    %     RT_=nonzeros(RT_);
    %     RT_(RT_>(mean(RT_)+3*std(RT_)))=0;
    %     RT_=nonzeros(RT_);

        [RTs_GO_model,~] = Race_model_go([a(1) a(2) a(3)],100); %100 = n trials generated by model

        khi=[];
        %% RTs real
        % RT_ExpiGO_ = sortrows(RT_ExpiGO_);
        RT_ExpiGO_ = sortrows(RT_);

        n1=0;n2=0;n3=0;n4=0;n5=0;
        perc2_ANTI_real = prctile(RT_ExpiGO_,20);
        perc3_ANTI_real =prctile(RT_ExpiGO_,40);
        perc4_ANTI_real = prctile(RT_ExpiGO_,60);
        perc5_ANTI_real = prctile(RT_ExpiGO_,80);

        for t =1:length(RT_ExpiGO_)
            if RT_ExpiGO_(t) < perc2_ANTI_real
                n1 = n1+1;
            end
            if (RT_ExpiGO_(t) >= perc2_ANTI_real && RT_ExpiGO_(t) < perc3_ANTI_real)
                n2 = n2+1;
            end
            if (RT_ExpiGO_(t) >= perc3_ANTI_real && RT_ExpiGO_(t) < perc4_ANTI_real)
                n3 = n3+1;
            end
            if (RT_ExpiGO_(t) >= perc4_ANTI_real && RT_ExpiGO_(t) < perc5_ANTI_real)
                n4 = n4+1; 
            end
            if RT_ExpiGO_(t) >= perc5_ANTI_real
                n5 = n5+1;
            end
        end

        perc_ANTI_real = [(n1/(n1+n2+n3+n4+n5)),(n2/(n1+n2+n3+n4+n5)),(n3/(n1+n2+n3+n4+n5)),(n4/(n1+n2+n3+n4+n5)),(n5/(n1+n2+n3+n4+n5))];
        %% RTs_GO_model
        RTs_GO_model=sortrows(RTs_GO_model);
        n1=0;n2=0;n3=0;n4=0;n5=0;

        perc2_ANTI = prctile(RTs_GO_model,20);
        perc3_ANTI = prctile(RTs_GO_model,40);
        perc4_ANTI = prctile(RTs_GO_model,60);
        perc5_ANTI = prctile(RTs_GO_model,80);

        for t =1 : length(RTs_GO_model)
            if RTs_GO_model(t) < perc2_ANTI_real
                n1 = n1 +1;
            end
            if (RTs_GO_model(t) >= perc2_ANTI_real && RTs_GO_model(t) < perc3_ANTI_real)
                n2 = n2 +1;
            end
            if (RTs_GO_model(t) >= perc3_ANTI_real && RTs_GO_model(t) < perc4_ANTI_real)
                n3 = n3 +1;
            end
            if (RTs_GO_model(t) >= perc4_ANTI_real && RTs_GO_model(t) < perc5_ANTI_real)
                n4 = n4 +1;
            end
            if RTs_GO_model(t) >= perc5_ANTI_real
                n5 = n5 +1;
            end
        end
        perc_ANTI = [(n1/(n1+n2+n3+n4+n5)),(n2/(n1+n2+n3+n4+n5)),(n3/(n1+n2+n3+n4+n5)),(n4/(n1+n2+n3+n4+n5)),(n5/(n1+n2+n3+n4+n5))];
        
        %% khi2 RT
        diff_ = perc_ANTI_real - perc_ANTI;
        for t =1 : length(diff_)
            khi(t) = ((diff_(t)^2)/(perc_ANTI_real(t)));
        end
        clear diff_

        khi_global = sum(khi);

    end
end