cond = {'P', 'NP'};

for pIdx = [1 2 3 5 6 7 8 9 14 18 29 31 17 19 20 22 24 25 28 30 32 33 34 35]
    for idxCond = 1:length(cond)
        if exist(['/media/zoe.brusselle/DATA/Patients_micromed/p' num2str(pIdx) '/cleandata_bipolar_NoOL_' cond{idxCond} '.mat'], 'file')
            % Load datas
            load(['/media/zoe.brusselle/DATA/Patients_micromed/p' num2str(pIdx) '/cleandata_bipolar_NoOL_' cond{idxCond} '.mat'])

            % Get the right datas
            dataType = {'Long SOA Valid' 'Long SOA Unvalid'};
            trigType = [211 222; 212 221];

            % VALID
            % Get the RT
            RT = data.trialinfo(ismember(data.trialinfo(:,1),trigType(1,:)), 2);
            save(['/media/zoe.brusselle/DATA/ScriptDesktp/Scripts/ModeleNicolas/RT4model/p' num2str(pIdx) '_cond' cond{idxCond} '_Valid.mat'], 'RT')

             % INVALID
            RT = data.trialinfo(ismember(data.trialinfo(:,1),trigType(2,:)), 2);
            save(['/media/zoe.brusselle/DATA/ScriptDesktp/Scripts/ModeleNicolas/RT4model/p' num2str(pIdx) '_cond' cond{idxCond} '_Invalid.mat'], 'RT');
        end
    end
end