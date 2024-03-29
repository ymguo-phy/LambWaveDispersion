function [cp0,n]=symmode(cp_min,cp_max,fd,cl,cs,mod,nm)
cp2=cp_min; % setting initial values
jump=33;   % min jump
cp0=zeros(mod,2);  %two roots (+ve,-ve)
n=0;
if(nm==1)
while cp2<cp_max&&n<mod
    
    %checking if signs changes or not
    cp1=cp2;
    cp2=cp1+jump; 
    f1=smfun(cp1,fd,cl,cs,1); %substitiuting values in eqns
    f2=smfun(cp2,fd,cl,cs,1);
    
    %Checking Signs
 while f1*f2>0&&cp2<cp_max
        cp1=cp2;
        cp2=cp1+jump;
        f1=smfun(cp1,fd,cl,cs,1);
        f2=smfun(cp2,fd,cl,cs,1);
        %Loop will continue if both roots have the same sign, different
        %signs means root lies between them
 end
    
    if(f1*f2<0)   %if -ve
        n=n+1;
        cp0(n,:)=[cp1 cp2];   %The actual root lies between these two values whcih can be determined by intersection method
    else
        if(f1==0&&f2~=0)
            n=n+1;
            cp0(n,:)=[cp1 cp1]; %if f1=0 it means it satisfy the eqn and is the actual root.
        elseif(f2==0 && f1~=0)
            n=n+1;
            cp0(n,:)=[cp2 cp2];
            cp2=cp2+1;
        elseif(f1==0 && f2==0) %both are the roots.
            n=n+1;
            cp0(n,:)=[cp1 cp1];
            n=n+1;
            cp0(n,:)=[cp2 cp2];
            cp2=cp2+1;
        end
    end
end
elseif(nm==2)

cp2=cp_min;
deter=33;
cp0=zeros(mod,2);
n=0;
while cp2<cp_max&&n<mod
    cp1=cp2;
    cp2=cp1+deter;
    f1=smfun(cp1,fd,cl,cs,2);
    f2=smfun(cp2,fd,cl,cs,2);
 while(f1*f2>0 && cp2<cp_max)
        cp1=cp2;
        cp2=cp1+jump;
        f1=smfun(cp1,fd,cl,cs,2);
        f2=smfun(cp2,fd,cl,cs,2);
 end
    if(f1*f2<0)
        n=n+1;
        cp0(n,:)=[cp1 cp2];
    else
        if(f1==0 && f2~=0)
            n=n+1;
            cp0(n,:)=[cp1 cp1];
        elseif f2==0&&f1~=0
            n=n+1;
            cp0(n,:)=[cp2 cp2];
            cp2=cp2+1;
        elseif f1==0&&f2==0
            n=n+1;
            cp0(n,:)=[cp1 cp1];
            n=n+1;
            cp0(n,:)=[cp2 cp2];
            cp2=cp2+1;
        end
    end
end
end
end
