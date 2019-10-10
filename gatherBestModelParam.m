cond = {'P', 'NP'};
validity = {'Valid', 'Invalid'};
path = [pwd '/fit'];

for idPat = [1,2,3,4,5,6,7,8,9,14,17,18,19,20,22,24,25,28,29,30,31,32,33,34] %1,2,3,4,5,6,7,8,9,14,17,18,19,20,22,24,25,28,29,30,31,32,33,34
    for idCond = 1:length(cond)
        for idVal = 1:length(validity)
            if ~exist([path '/p' num2str(idPat)], 'dir')
                mkdir([path '/p' num2str(idPat)]);
            end
            
            if exist([path '/p' num2str(idPat) '_cond' cond{idCond} '_' validity{idVal} '/res/best_p_' validity{idVal} '_' cond{idCond} '.mat' ], 'file')
                sourceFile = [path '/p' num2str(idPat) '_cond' cond{idCond} '_' validity{idVal} '/res/best_p_' validity{idVal} '_' cond{idCond} '.mat' ];
                destFile = [path '/p' num2str(idPat)];
                copyfile(sourceFile, destFile);
            end
        end
    end
end