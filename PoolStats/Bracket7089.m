%% 70-89 Bracket Function
if PlayerA.Strength == 1
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

elseif PlayerB.Strength == 1
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
end
%%