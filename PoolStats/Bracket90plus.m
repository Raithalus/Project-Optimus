%% 90+ Bracket
if PlayerA.Strength == 1
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
    
elseif PlayerB.Strength == 1
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
%%