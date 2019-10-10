	patID = getenv('SLURM_ARRAY_TASK_ID');

    cond = {'P', 'NP'};
    validity = {'Valid', 'Invalid'};

    parpool(8);
    %% First pass go
    for pIdx = [patID] % 1 2 3 5 6 7 8 9 14 18 29 31 17 19 20 22 24 25 28 30 32 33 34
        parfor idxCond = 1:length(cond)
            for iVal = 1:length(validity)
                if ~exist(['/network/lustre/iss01/home/zoe.brusselle/fit/p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal}], 'dir')
                    mkdir(['/network/lustre/iss01/home/zoe.brusselle/fit/p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal}])
                end
                if ~exist(['/network/lustre/iss01/home/zoe.brusselle/fit/p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal} '/res'], 'dir')
                    mkdir(['/network/lustre/iss01/home/zoe.brusselle/fit/p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal} '/res'])
                end
                if exist(['/network/lustre/iss01/home/zoe.brusselle/RT4model/p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal} '.mat'], 'file')
                    First_pass_go_local(['p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal}])
                end
                cd(pwd)   
            end
        end
    end



    %% Run every created launcher
    for pIdx = [patID] % 1 2 3 5 6 7 8 9 14 18 29 31 17 19 20 22 24 25 28 30 32 33 34
        disp(['Run Launchers ' num2str(pIdx)]);
        for idxCond = 1:length(cond)
            for iVal = 1:length(validity)
                for i=1:50
                    if exist(['/network/lustre/iss01/home/zoe.brusselle/fit/p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal} '/res/launcher' num2str(i) '.m'], 'file')
                        if ~ exist(['/network/lustre/iss01/home/zoe.brusselle/fit/p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal} '/res/output_FirstPass_' num2str(i) '.mat'], 'file')
                            disp(['RUN p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal} ' launcher' num2str(i)]);
                            run(['/network/lustre/iss01/home/zoe.brusselle/fit/p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal} '/res/launcher' num2str(i) '.m'])
                        end
                    end
                end
            end
        end
    end

    %% Second pass go
    for pIdx = [patID] % n subjects % 5 6 7 8 9 14 18 29 31
        disp(['Run Second_pass_go_local ' num2str(pIdx)]);
        for idxCond = 1:length(cond)
            for iVal = 1:length(validity)
                if exist(['/network/lustre/iss01/home/zoe.brusselle/fit/p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal} '/res/output_FirstPass_1.mat'], 'file')
                    Second_pass_go_local(['p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal}])
                    cd(pwd)   
                end
            end
        end
    end
    
    
    %% Run every created launcher for the 200 improved calculated points
    for pIdx = [patID] % 1 2 3 5 6 7 8 9 14 18 29 31 17 19 20 22 24 25 28 30 32 33 34
        disp(['Run Launcher ' num2str(pIdx)]);
        for idxCond = 1:length(cond)
            for iVal = 1:length(validity)
                for i=1:200
                    if exist(['/network/lustre/iss01/home/zoe.brusselle/fit/p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal} '/res/launcher_2_' num2str(i) '.m'], 'file')
                        if ~ exist(['/network/lustre/iss01/home/zoe.brusselle/fit/p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal} '/res/output_SecndPass_' num2str(i) '.mat'], 'file')
                            disp(['RUN p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal} ' launcher_2_' num2str(i)]);
                            run(['/network/lustre/iss01/home/zoe.brusselle/fit/p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal} '/res/launcher_2_' num2str(i) '.m'])
                        end
                    end
                end
            end
        end
    end
    
    %% Get the best params
    for pIdx = [patID] % 1 2 3 5 6 7 8 9 14 18 29 31 17 19 20 22 24 25 28 30 32 33 34
        disp(['Get best Param p ' num2str(pIdx)]);
        for idxCond = 1:length(cond)
            for iVal = 1:length(validity)
                if ~ exist(['/network/lustre/iss01/home/zoe.brusselle/fit/p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal} '/res/output_SecndPass_1.mat'], 'file')
                    disp(['Best Param p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal}]);
                    best_p = get_best_params(['p' num2str(pIdx) '_cond' cond{idxCond} '_' validity{iVal}]); 
                end
            end
        end
    end 


delete(gcp);