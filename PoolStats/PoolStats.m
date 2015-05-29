%Pool Matchup Predictor
clear all; close all; clc;
%% Load variables

%load stats.mat %TBD

%Should be an array of cell structure with playerID and associated stats
%Ratings, scores, etc.


%Match History - Dates and Outcomes

%% Notes
% Long term trends vs. Short term moving average
% Overall Game Theory of Match Up picking

%% Test Data
PlayerName = {'Player1', 'Player2', 'Player3', 'Player4', 'Player5', 'Player6', 'Player7', 'Player8', 'Player9', 'Player10', 'Player11', 'Player12', 'Player13', 'Player14', 'Player15', 'Player16', 'Player17', 'Player18', 'Player19', 'Player20'};
PlayerID = [1:20];
PlayerRating = [1:20];
Teams = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2];
%% Working
for i = 1:length(PlayerID)% Generates overall Data Structure
    Data(i,1) = struct('PlayerName', PlayerName(i), 'PlayerID', PlayerID(i), 'PlayerRating', PlayerRating(i));
end
%% Race Matrix

%How to call each combination of players?

%Player2 vs. Player19
PlayerA = Data(2);
PlayerB = Data(19);
%% Rating Test
% PlayerA.PlayerRating = 10;
% PlayerB.PlayerRating = 60;
%% Determine Player with higher skill level and skill difference
if PlayerA.PlayerRating > PlayerB.PlayerRating
    PlayerA.Strength = 1; 
    PlayerB.Strength = 0;
elseif PlayerB.PlayerRating > PlayerA.PlayerRating
    PlayerB.Strength = 1;
    PlayerA.Strength = 0;
elseif PlayerA.PlayerRating == PlayerB.PlayerRating
    PlayerA.Strength = 1;
    PlayerB.Strength = 1;    
end
%% Determine Races for each Player
if PlayerA.Strength == 1
    if PlayerA.PlayerRating <40
        SLD = PlayerA.PlayerRating - PlayerB.PlayerRating;
        if SLD <= 19
            PlayerA.Race = 2
            PlayerB.Race = 2
        elseif SLD > 19
            PlayerA.Race = 2
            PlayerB.Race = 1
        end
    elseif 39 < PlayerA.PlayerRating & PlayerA.PlayerRating < 50
       SLD = PlayerA.PlayerRating - PlayerB.PlayerRating;
        if SLD <= 10
            PlayerA.Race = 3
            PlayerB.Race = 3
        elseif 10 < SLD & SLD < 27
            PlayerA.Race = 3
            PlayerB.Race = 2
        elseif SLD >= 27
            PlayerA.Race = 4
            PlayerB.Race = 2
        end
    elseif 49 < PlayerA.PlayerRating & PlayerA.PlayerRating < 70
       SLD = PlayerA.PlayerRating - PlayerB.PlayerRating;
        if SLD <= 6
            PlayerA.Race = 4
            PlayerB.Race = 4
        elseif 6 < SLD & SLD < 19
            PlayerA.Race = 4
            PlayerB.Race = 3
        elseif 18 < SLD & SLD < 30
            PlayerA.Race = 5
            PlayerB.Race = 3
        elseif 29 < SLD & SLD < 40
            PlayerA.Race = 4
            PlayerB.Race = 2
        elseif 39 < SLD & SLD < 49
            PlayerA.Race = 5
            PlayerB.Race = 2
        elseif SLD >= 49
            PlayerA.Race = 6
            PlayerB.Race = 2
        end
    elseif 69 < PlayerA.PlayerRating & PlayerA.PlayerRating <90
        SLD = PlayerA.PlayerRating - PlayerB.PlayerRating;
        if SLD <= 5
            PlayerA.Race = 5
            PlayerB.Race = 5
        elseif 5 < SLD & SLD < 15
            PlayerA.Race = 5
            PlayerB.Race = 4
        elseif 14 < SLD & SLD < 22
            PlayerA.Race = 6
            PlayerB.Race = 4
        elseif 21 < SLD & SLD < 29
            PlayerA.Race = 5
            PlayerB.Race = 3
        elseif 28 < SLD & SLD < 37
            PlayerA.Race = 6
            PlayerB.Race = 3
        elseif 36 < SLD & SLD < 47
            PlayerA.Race = 7
            PlayerB.Race = 3
        elseif 46 < SLD & SLD < 57
            PlayerA.Race = 6
            PlayerB.Race = 2
        elseif 56 < SLD & SLD < 63
            PlayerA.Race = 7
            PlayerB.Race = 2
        elseif SLD >= 63
            PlayerA.Race = 8
            PlayerB.Race = 2
        end
    elseif PlayerA.PlayerRating >= 90
        SLD = PlayerA.PlayerRating - PlayerB.PlayerRating;
        if SLD <= 4
            PlayerA.Race = 6
            PlayerB.Race = 6
        elseif 4 < SLD & SLD < 12
            PlayerA.Race = 6
            PlayerB.Race = 5
        elseif 11 < SLD & SLD < 18
            PlayerA.Race = 7
            PlayerB.Race = 5
        elseif 17 < SLD & SLD < 23
            PlayerA.Race = 6
            PlayerB.Race = 4
        elseif 22 < SLD & SLD < 29
            PlayerA.Race = 7
            PlayerB.Race = 4
        elseif 28 < SLD & SLD < 36
            PlayerA.Race = 8
            PlayerB.Race = 4
        elseif 35 < SLD & SLD < 43
            PlayerA.Race = 7
            PlayerB.Race = 3
        elseif 42 < SLD & SLD < 49
            PlayerA.Race = 8
            PlayerB.Race = 3
        elseif 48 < SLD & SLD < 59
            PlayerA.Race = 9
            PlayerB.Race = 3
        elseif 58 < SLD & SLD < 69
            PlayerA.Race = 8
            PlayerB.Race = 2
        elseif 68 < SLD & SLD < 75
            PlayerA.Race = 9
            PlayerB.Race = 2
        elseif SLD >= 75
            PlayerA.Race = 10
            PlayerB.Race = 2
        end
    end

elseif PlayerB.Strength == 1
    if PlayerB.PlayerRating <40
      SLD = PlayerB.PlayerRating - PlayerA.PlayerRating;
        if SLD <= 19
            PlayerA.Race = 2
            PlayerB.Race = 2
        elseif SLD > 19
            PlayerA.Race = 1
            PlayerB.Race = 2
        end 
    elseif 39 < PlayerB.PlayerRating & PlayerB.PlayerRating < 50
       SLD = PlayerB.PlayerRating - PlayerA.PlayerRating;
        if SLD <= 10
            PlayerA.Race = 3
            PlayerB.Race = 3
        elseif 10 < SLD & SLD < 27
            PlayerA.Race = 2
            PlayerB.Race = 3
        elseif SLD >= 27
            PlayerA.Race = 2
            PlayerB.Race = 4
        end  
    elseif 49 < PlayerB.PlayerRating & PlayerB.PlayerRating < 70
          SLD = PlayerB.PlayerRating - PlayerA.PlayerRating;
        if SLD <= 6
            PlayerA.Race = 4
            PlayerB.Race = 4
        elseif 6 < SLD & SLD < 19
            PlayerA.Race = 3
            PlayerB.Race = 4
       elseif 18 < SLD & SLD < 30
            PlayerA.Race = 3
            PlayerB.Race = 5
        elseif 29 < SLD & SLD < 40
            PlayerA.Race = 2
            PlayerB.Race = 4
        elseif 39 < SLD & SLD < 49
            PlayerA.Race = 2
            PlayerB.Race = 5
        elseif SLD >= 49
            PlayerA.Race = 2
            PlayerB.Race = 6
        end
    elseif 69 < PlayerB.PlayerRating & PlayerB.PlayerRating <90
        SLD = PlayerB.PlayerRating - PlayerA.PlayerRating;
        if SLD <= 5
            PlayerA.Race = 5
            PlayerB.Race = 5
        elseif 5 < SLD & SLD < 15
            PlayerA.Race = 4
            PlayerB.Race = 5
        elseif 14 < SLD & SLD < 22
            PlayerA.Race = 4
            PlayerB.Race = 6
        elseif 21 < SLD & SLD < 29
            PlayerA.Race = 3
            PlayerB.Race = 5
        elseif 28 < SLD & SLD < 37
            PlayerA.Race = 3
            PlayerB.Race = 6
        elseif 36 < SLD & SLD < 47
            PlayerA.Race = 3
            PlayerB.Race = 7
        elseif 46 < SLD & SLD < 57
            PlayerA.Race = 2
            PlayerB.Race = 6
        elseif 56 < SLD & SLD < 63
            PlayerA.Race = 2
            PlayerB.Race = 7
        elseif SLD >= 63
            PlayerA.Race = 2
            PlayerB.Race = 8
        end
    elseif PlayerB.PlayerRating >= 90
        SLD = PlayerB.PlayerRating - PlayerA.PlayerRating;
        if SLD <= 4
            PlayerA.Race = 6
            PlayerB.Race = 6
        elseif 4 < SLD & SLD < 12
            PlayerA.Race = 5
            PlayerB.Race = 6
        elseif 11 < SLD & SLD < 18
            PlayerA.Race = 5
            PlayerB.Race = 7
        elseif 17 < SLD & SLD < 23
            PlayerA.Race = 4
            PlayerB.Race = 6
        elseif 22 < SLD & SLD < 29
            PlayerA.Race = 4
            PlayerB.Race = 7
        elseif 28 < SLD & SLD < 36
            PlayerA.Race = 4
            PlayerB.Race = 8
        elseif 35 < SLD & SLD < 43
            PlayerA.Race = 3
            PlayerB.Race = 7
        elseif 42 < SLD & SLD < 49
            PlayerA.Race = 3
            PlayerB.Race = 8
        elseif 48 < SLD & SLD < 59
            PlayerA.Race = 3
            PlayerB.Race = 9
        elseif 58 < SLD & SLD < 69
            PlayerA.Race = 2
            PlayerB.Race = 8
        elseif 68 < SLD & SLD < 75
            PlayerA.Race = 2
            PlayerB.Race = 9
        elseif SLD >= 75
            PlayerA.Race = 2
            PlayerB.Race = 10
        end
    end
end
