function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: Megan Shepherd
%
%         DUE: November 12
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

% Bug 1: always gave the 'Please re-enter a level of play message' found by
% running code after fixing the first 2 bugs. Originally there was || you
% needed && instead
while level ~= beginner && level ~= moderate && level ~= advanced       
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

% Bug 2: only one '=' operator for "if level = beginner", when you compare a value for equality
% you need to use '=='. Found by running code
if level == beginner                     

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest;          % Bug 3: the 'h' in highest wasn't 
                                    % capitalized so i changed it to match the format from above
end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi(highest,1);   % Bug 4: The previous secretNumber was only choosing the 
                                   %highest nuber for all levels so i changed it to randi and 
                                   %was able to get different numbers  

% initialize number of guesses and User_guess

numOfTries = 0; %Bug 5: changed numOfTries to = 0 instead of one because it 
                %was displaying tries one number higher than it should have been
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly


while userGuess ~= secretNumber


% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest %Bug 6: the '>=' did not allow user to guess 
                                           %the highest number value

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber %Bug 7: needed to change sign to less than in order to 
                            %display the the number was too low and not just alway higher
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber,numOfTries); %Bug 8: needed to add in number of tries to pull from in 
                          %order to display what try the number was guessed on
end
% Bug 9: no end to this loop, needed to end it to run the code fully.
% Found by running the code



end  % of guessing while loop

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');
%Bug 10 : moved from inside the loop to outside the loop so it wouldn't show
%every time a player guessed a number

% end of game