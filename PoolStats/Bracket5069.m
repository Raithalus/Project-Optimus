%% 50-69 Bracket Function % Logic Functions correctly
if PlayerA.Strength == 1
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
    
elseif PlayerB.Strength == 1
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
end
%%