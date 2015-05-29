%%0-39 Bracket Function
if PlayerA.Strength == 1 
    SLD = PlayerA.PlayerRating - PlayerB.PlayerRating;
        if SLD <= 19
            PlayerA.Race = 2
            PlayerB.Race = 2
        elseif SLD > 19
            PlayerA.Race = 2
            PlayerB.Race = 1
        end

elseif PlayerB.Strength == 1
    SLD = PlayerB.PlayerRating - PlayerA.PlayerRating;
        if SLD <= 19
            PlayerA.Race = 2
            PlayerB.Race = 2
        elseif SLD > 19
            PlayerA.Race = 1
            PlayerB.Race = 2
        end  
end
%%