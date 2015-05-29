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
%%





%% Working
for i = 1:length(PlayerID)% Generates overall Data Structure
    Data(i,1) = struct('PlayerName', PlayerName(i), 'PlayerID', PlayerID(i), 'PlayerRating', PlayerRating(i));
end
%% Race Matrix

%Maybe create a new function

%How to call each combination of players?

%Player2 vs. Player19
PlayerA = Data(2);
PlayerB = Data(19);
%% Determine Player with higher skill level and skill difference
if PlayerA.PlayerRating > PlayerB.PlayerRating
    PlayerA.Strength = 1; 
    PlayerB.Strength = 0;
elseif PlayerB.PlayerRating > PlayerA.PlayerRating
    PlayerB.Strength = 1;
    PlayerA.Strength = 0;
end

% Send to appropriate Bracket Function
% Need to have a temp 'Greater' tag and preserve identities; 
% instead of coding reciprocals

% Need a better what to characterize inputs
%% 0-39 Bracket Function %Logic functions correctly
% if PlayerA.Strength == 1 
%     SLD = PlayerA.PlayerRating - PlayerB.PlayerRating;
%         if SLD <= 19
%             PlayerA.Race = 2
%             PlayerB.Race = 2
%         elseif SLD > 19
%             PlayerA.Race = 2
%             PlayerB.Race = 1
%         end
% 
% elseif PlayerB.Strength == 1
%     SLD = PlayerB.PlayerRating - PlayerA.PlayerRating;
%         if SLD <= 19
%             PlayerA.Race = 2
%             PlayerB.Race = 2
%         elseif SLD > 19
%             PlayerA.Race = 1
%             PlayerB.Race = 2
%         end  
% end
%% 40-49 Bracket Function
if PlayerA.Strength == 1 
    SLD = PlayerA.PlayerRating - PlayerB.PlayerRating;
        if SLD <= 10
            PlayerA.Race = 3
            PlayerB.Race = 3
        elseif 10<SLD&SLD<27
            PlayerA.Race = 3
            PlayerB.Race = 2
        end

elseif PlayerB.Strength == 1
    SLD = PlayerB.PlayerRating - PlayerA.PlayerRating;
        if SLD <= 10
            PlayerA.Race = 300
            PlayerB.Race = 300
        elseif 10<SLD&SLD<27
            PlayerA.Race = 200
            PlayerB.Race = 300
        end  
end

% if PlayerA.Strength == 1 
%     SLD = PlayerA.PlayerRating - PlayerB.PlayerRating;
%         if SLD < 11
%             PlayerA.Race = 3
%             PlayerB.Race = 3
%         
%         elseif 10 < SLD < 27
%             PlayerA.Race = 3
%             PlayerB.Race = 2
%         
%         elseif SLD >= 27
%             PlayerA.Race = 4
%             PlayerB.Race = 2
%         end
% 
% elseif PlayerB.Strength == 1
%     SLD = PlayerB.PlayerRating - PlayerA.PlayerRating;
%         if SLD < 11
%             PlayerA.Race = 3
%             PlayerB.Race = 3
%         
%         elseif 10 > SLD > 27
%             PlayerA.Race = 2
%             PlayerB.Race = 3
%         
%         elseif SLD >= 27
%             PlayerA.Race = 2
%             PlayerB.Race = 4
%         end  
% end




