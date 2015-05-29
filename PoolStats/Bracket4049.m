%% 40-49 Bracket Function 
if PlayerA.Strength == 1 
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

elseif PlayerB.Strength == 1
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
end
%%