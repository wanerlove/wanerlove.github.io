

function nu=js(n,y)

switch y
    case{1,3,5,7,8,10,12}
        nu=31;
    case{4,6,9,11}
        nu=30;
        
    case 2
        if(mod(n,4)==0 && mod(n,100)~=0) || (mod(n,400)==0)
            nu=29;
        else
            nu=28;
        end
    
end



end