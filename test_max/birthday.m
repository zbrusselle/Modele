
function match = birthday(groupSize)
% BIRTHDAY Simulates a single trial of the Birthday Paradox

% Create a list with a random birthday for each member in the group
bdays = randi(365, groupSize, 1);

% Sort the birthdays
bdays = sort(bdays);

% Check if any consecutive birthdays are identical
match =  any(diff(bdays) == 0);

