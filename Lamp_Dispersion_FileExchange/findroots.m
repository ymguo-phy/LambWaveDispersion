function cp=findroots(cp1,cp2,fd,cl,cs,tol,nm)
% Finding roots by usinf bisection method
if(nm==1)
while cp2-cp1>tol 
    
    f1=smfun(cp1,fd,cl,cs,1);
    f2=smfun(cp2,fd,cl,cs,1);
    
    cp0=(cp1+cp2)/2;
    
    f0=smfun(cp0,fd,cl,cs,1);
    
    if f1*f0<0  %generates -ve value 
        cp2=cp0;
        
    elseif f2*f0<0
        cp1=cp0;
        
    elseif f0==0 %exact root
        break
    elseif f1==0
        cp2=cp1;
        break
    elseif f2==0
        cp1=cp2;
        break
    end
end
cp=(cp2+cp1)/2;

elseif(nm==2)
while cp2-cp1>tol
    
    f1=smfun(cp1,fd,cl,cs,2);
    f2=smfun(cp2,fd,cl,cs,2);
   
    cp0=(cp1+cp2)/2;
    
    f0=smfun(cp0,fd,cl,cs,2);
    
    if f1*f0<0
        cp2=cp0;
    elseif f2*f0<0
        cp1=cp0;
    elseif f0==0
        break
    elseif f1==0
        cp2=cp1;
        break
    elseif f2==0
        cp1=cp2;
        break
    end
end
cp=(cp2+cp1)/2;

end
end