function best_ = get_best_params(subj)

    liste_= dir(['/network/lustre/iss01/home/zoe.brusselle/fit/' subj '/res/','output_SecndPass_*.mat']);


    for k =1 : length(liste_)

        load(['/network/lustre/iss01/home/zoe.brusselle/fit/' subj '/res/' liste_(k).name])
        khi2(k) = fval;
        combi2(k,:) = x;
        clear  fval   x
    end

    best_ =num2str(combi2(khi2==min(khi2),:));
    if length(best_)>1
        best_=best_(1,:);
    end

end