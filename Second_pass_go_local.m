function Second_pass_go_local(patCond)

% liste_ = dir(['/Users/nicolas/ownCloud/model_PPN/cluster/' subj '/res/','*.mat']);
% cd(['/Users/nicolas/ownCloud/model_PPN/cluster/' subj])
% for t =1 : length(liste_)
%     load(['/Users/nicolas/ownCloud/model_PPN/cluster/' subj '/res/' liste_(t).name])
%     combi(t,:) = x;
%     clear  fval x
% end
    liste_ = dir(['/network/lustre/iss01/home/zoe.brusselle/fit/' patCond '/res/','output_FirstPass_*.mat']);

    for t =1 : length(liste_)
        load(['/network/lustre/iss01/home/zoe.brusselle/fit/' patCond '/res/' liste_(t).name])
        combi(t,:) = x;
        clear  fval x
    end

    p=1;
    for t = 1 : length(combi)
        X0(p,1) = combi(t,1)-0.01;
        X0(p,2) = combi(t,2)-0.01;
        X0(p,3) = combi(t,3)-0.1;

        p=p+1;
        X0(p,1) = combi(t,1)-0.02;
        X0(p,2) = combi(t,2)-0.02;
        X0(p,3) = combi(t,3)-0.2;

        p=p+1;
        X0(p,1) = combi(t,1)+0.01;
        X0(p,2) = combi(t,2)+0.01;
        X0(p,3) = combi(t,3)+0.1;

        p=p+1;
        X0(p,1) = combi(t,1)+0.02;
        X0(p,2) = combi(t,2)+0.02;
        X0(p,3) = combi(t,3)+0.2;

        p=p+1;
    end


    for t = 1 : length(X0)
        path_fct = '/network/lustre/iss01/home/zoe.brusselle';
        fid = fopen(['/network/lustre/iss01/home/zoe.brusselle/fit/' patCond '/res/launcher_2_' num2str(t) '.m'],'w');
        fprintf(fid,'%s\n', ['addpath(''' path_fct ''');']); 
        fprintf(fid,'lb = [0,0,0];\n');
        fprintf(fid,'ub=[100,100,5000];\n');
        eval(['fprintf(fid,''statMod = @(input) stat_model_go(input,''''' patCond ''''');\n'');'])
        eval(['fprintf(fid,''[x,fval] = patternsearch(statMod,[' num2str(X0(t,1)) ',' num2str(X0(t,2)) ',' num2str(X0(t,3)) '],[],[],[],[],lb,ub);\n'');'])
        save_name =['/network/lustre/iss01/home/zoe.brusselle/fit/' patCond '/res/output_SecndPass_' num2str(t) '.mat']; %save path
        fprintf(fid,['save(''' save_name ''')']);
        fclose(fid);
    end



end
