
% RUNBIRTHDAYVEC Runs a Monte Carlo simulation using the Birthday Paradox code
%    PROB = RUNBIRTHDAYVEC(NUMTRIALS, GROUPSIZE) Calls the birthday code
%    NUMTRIALS times to see if any birthdays match in a group of size
%    GROUPSIZE.  The return value is the probability that a match will be
%    found.
%
%    Example:
%    p = runBirthdayVec(1e5, 30)


fprintf('--- Start ---\n');

parpool('cluster-slurm-icm',8);

tic;
numTrials = 1e7;
groupSize = 30;

% Preallocate some memory for the matches
matches = false(1, numTrials);

parfor trial = 1:numTrials
        % Run a simulation for a group
        matches(trial) = birthday(groupSize);
end

% Probability is the sum of matches divided by number of trials
prob = sum(matches)/numTrials;



fprintf('Computed probability : %f\n', prob);

toc;

delete(gcp)

