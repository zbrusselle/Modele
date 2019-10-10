function First_pass_go_local(patCond)
    
    n_random_numbers = 50;
    r(1:n_random_numbers,1:3)=NaN;
    for t = 1 : n_random_numbers
        fid = fopen(['/network/lustre/iss01/home/zoe.brusselle/fit/' patCond '/res/launcher' num2str(t) '.m'],'w');
        for p =1:2
            a = 0;
            b=100;
            r(t,p) = (b-a).*rand(1) + a;
        end
        for p =3
            a = 0;
            b=5000;
            r(t,p) = (b-a).*rand(1) + a;
        end
        path_fct = '/network/lustre/iss01/home/zoe.brusselle';
        fprintf(fid,'%s\n', ['addpath(''' path_fct ''');']); 
        fprintf(fid,'lb = [0,0,0];\n');
        fprintf(fid,'ub=[100,100,5000];\n');
        eval(['fprintf(fid,''statMod = @(input) stat_model_go(input,''''' patCond ''''');\n'');'])
        eval(['fprintf(fid,''[x,fval] = patternsearch(statMod,[' num2str(r(t,1)) ',' num2str(r(t,2)) ',' num2str(r(t,3)) '],[],[],[],[],lb,ub);\n'');'])
        save_name =['/network/lustre/iss01/home/zoe.brusselle/fit/' patCond '/res/output_FirstPass_' num2str(t) '.mat']; %save path
        save_comand = ['save(''' save_name ''')'];
        fprintf(fid,'%s\n', save_comand);
        fclose(fid);

    end
end


