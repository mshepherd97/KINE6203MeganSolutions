%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 2 - Tic Tac Toe Game
%
% Author: Megan Shepherd
%
% Date: 10/8/2020(start) - 10/22/2020(due)
%
% Description: Plays a game of Tic Tac Toe with user input
%
% Developed on Matlab version 2020a, on Mac OSX Version 10.15.7
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc
%clears your window and all functions prior to game starting

disp("Welcome to Tic Tac Toe")
prompt = input("Would you like to play a game? Enter 1 for Yes and 2 for No:")
if (prompt == 1)
    fprintf(2, 'Welcome to the best game of Tic Tac Toe Ever\n')
    pause(1)
    fprintf(2, 'I will go first.You will enter a 1,2,or3 for both rows and columns to select your move\n')
    pause(5)
else %computer doesn't like to be told no, but is cordial
    fprintf(2, 'Well thanks for comming comeback another time\n')
    pause(1)
    fprintf(2, 'BYEEEE\n')
end


% create game board
while (prompt == 1)
    tictactoe = zeros(3,3)
    pause(4)
    fprintf(2, 'I will go first, I am ones\n')
    pause(2)
    tictactoe(1,1) = 1 % Computers first move
    pause(2)
    
    turns = (1:4); % the player is given 4 turns per game and with the comupter 
    % going first there are 5 moves before wins are checked for

disp('You are twos, your turn')
for i = 1:length(turns) 
    row = input('What row do you want to select?')
    col = input('What column do you want to select?')
    while (tictactoe(row,col) == 2) || (tictactoe(row,col) == 1) %checks to see if spot is already taken
        fprintf(2, 'Invalid move, please select another.\n')
        row = input('What row do you want to select?')
        col = input('What column do you want to select?')
    end
    
    tictactoe(row,col) = 2; %players turn is added to the board
    pause(3)
    disp(tictactoe)


if((tictactoe(1,1) == 2)&&(tictactoe(1,2) == 2)&&(tictactoe(1,3) == 2))||((tictactoe(2,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(2,3) ==2))||((tictactoe(3,1)== 2) && (tictactoe(3,2)== 2)&& (tictactoe(3,3)== 2))||((tictactoe(1,1)== 2) && (tictactoe(2,1)== 2) && (tictactoe(3,1)== 2))||((tictactoe(1,2)== 2) && (tictactoe(2,2)== 2)&& (tictactoe(3,2)== 2))||((tictactoe(1,3) == 2) && (tictactoe(2,3)== 2) && (tictactoe(3,3)== 2))||((tictactoe(1,1) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,3)==2))||((tictactoe(1,3) ==2) && (tictactoe(2,2) ==2) && (tictactoe(3,1) ==2))
fprintf('Wow Congrats, can''t believe you won!!') %checks to see if the player has three in a row
break
end

if ((tictactoe(1,1) == 1) && (tictactoe(3,3) == 1) && (tictactoe(2,2)== 0)) || ((tictactoe(1,3)== 1) && (tictactoe(3,1) == 1) && (tictactoe(2,2) == 0))
    tictactoe(2,2) = 1  %Checks if there is a possible win   
    fprintf(2, 'I WIN\n ')
    break
elseif(tictactoe(1,1) ==1) && (tictactoe(2,2) == 1) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
    fprintf(2, 'I WIN\n')
    break
elseif(tictactoe(2,2) ==1) && (tictactoe(3,3)== 1) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'I WIN\n')
    break
elseif(tictactoe(1,3) ==1) && (tictactoe(2,2)== 1) && (tictactoe(3,1)== 0)
    tictactoe(3,1) = 1
    fprintf(2, 'I WIN\n')
    break
elseif(tictactoe(2,2) ==1) && (tictactoe(3,1) ==1) && (tictactoe(1,3) == 0)
    tictactoe(1,3)= 1
    fprintf(2, 'I WIN\n')
    break
elseif (tictactoe(1,1) == 1) && (tictactoe(1,2) == 1) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
    fprintf(2, 'I WIN\n')
    break
elseif (tictactoe(1,1)== 1) && (tictactoe(1,3) == 1) && (tictactoe(1,2) == 0)
    tictactoe(1,2) = 1
    fprintf(2, 'I WIN\n')
    break
elseif (tictactoe(1,2) == 1) && (tictactoe(1,3)== 1) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'I WIN\n')
    break
elseif (tictactoe(1,1)== 1) && (tictactoe(2,1) == 1) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
    fprintf(2, 'I WIN\n')
    break
elseif (tictactoe(1,1)== 1) && (tictactoe(3,1) == 1) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
    fprintf(2, 'I WIN\n')
    break
elseif (tictactoe(2,1)== 1) && (tictactoe(3,1) == 1) && (tictactoe(1,1) == 0)
    tictactoe(1,1) = 1
    fprintf(2, 'I WIN\n')
    break
elseif (tictactoe(2,1)== 1) && (tictactoe(2,2) == 1) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
    fprintf(2, 'I WIN\n')
    break
elseif (tictactoe(2,2) == 1) && (tictactoe(2,3) == 1) && (tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
    fprintf(2, 'I WIN\n')
    break
elseif (tictactoe(2,1) == 1) && (tictactoe(2,3)== 1) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
    fprintf(2, 'I WIN\n')
    break
elseif (tictactoe(3,1) == 1) && (tictactoe(3,2) == 1) && (tictactoe(3,3) == 0)
    tictactoe(3,3) = 1
    fprintf(2, 'I WIN\n')
    break
elseif(tictactoe(3,2) == 1) && (tictactoe(3,3) == 1) && (tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
    fprintf(2, 'I WIN\n')
    break
elseif(tictactoe(3,1) == 1) && (tictactoe(3,3) == 1) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
    fprintf(2, 'I WIN \n')
    break
elseif(tictactoe(1,2) == 1) && (tictactoe(2,2) ==1) && (tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
    fprintf(2, 'I WIN\n')
    break
elseif(tictactoe(1,2) == 1) && (tictactoe(3,2) ==1) && (tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
    fprintf(2, 'I WIN\n')
    break
elseif(tictactoe(2,2) ==1) && (tictactoe(3,2)== 1) && (tictactoe(1,2) == 0)
    tictactoe(1,2) =1
    fprintf(2, 'I WIN\n')
    break
elseif(tictactoe(1,3) ==1) && (tictactoe(2,3) ==1) && (tictactoe(3,3)== 0)
    tictactoe(3,3)= 1
    fprintf(2, 'I WIN\n')
    break
elseif(tictactoe(1,3) == 1) && (tictactoe(3,3) ==1) && (tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
    fprintf(2, 'I WIN\n')
    break
elseif(tictactoe(2,3) ==1) && (tictactoe(3,3) == 1) && (tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
    fprintf(2, 'I WIN\n')
    break
elseif (tictactoe(1,1) == 0) %when there hasnt been a player to win the computer will play one of these moves
    tictactoe(1,1) = 1
elseif(tictactoe(2,2) == 0)
    tictactoe(2,2) = 1
elseif(tictactoe(1,3) == 0)
    tictactoe(1,3) = 1
elseif(tictactoe(3,1) == 0)
    tictactoe(3,1) = 1
elseif(tictactoe(1,2) == 0)
    tictactoe(1,2) = 1
elseif(tictactoe(2,1) == 0)
    tictactoe(2,1) = 1
elseif(tictactoe(2,3) == 0)
    tictactoe(2,3) = 1
elseif(tictactoe(3,2) == 0)
    tictactoe(3,2) = 1
    break  
end

if ((tictactoe(1,1) ~= 0) && (tictactoe(1,2) ~= 0) && (tictactoe(1,3) ~= 0) && (tictactoe(2,1) ~= 0) && (tictactoe(2,2) ~= 0) && (tictactoe(2,3) ~= 0) && (tictactoe(3,1) ~= 0) && (tictactoe(3,2) ~= 0) && (tictactoe(3,3) ~= 0))
    fprintf(2, 'CAT. If you didn''t know that means it''s a tie\n') %if no one wins
break
end

end

clear workspace

disp("would you like to play again??")
prompt = input("Enter 1 for Yes and 2 for No:")
if (prompt == 1)
    fprintf(2, 'We meet again, I hope you''re ready this time\n')
    pause(1)
    fprintf(2, 'You know the rules. I will go first.\n')
    pause(7)
else %computer doesn't like to be told no, but is now angry
    fprintf(2, 'Well be that way, I didn''t want to play against you anymore anyways!\n')
    pause(3)
    fprintf(2, 'BYEEEE\n')
break
end

end
