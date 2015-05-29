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
PlayerName = {'Player1', 'Player2', 'Player3', 'Player4', 'Player5', 'Player6', 'Player7', 'Player8', 'Player9', 'Player10'}
PlayerID = [1:10];
PlayerRating = [1:10];
%%





%% Working
for i = 1:length(PlayerID)% Generates overall Data Structure
    Data(i,1) = struct('PlayerName', PlayerName(i), 'PlayerID', PlayerID(i), 'PlayerRating', PlayerRating(i))
end
%%
