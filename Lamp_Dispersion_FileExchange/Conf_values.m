function [cl,cs,cpa,cps,f] = Conf_values(E,v,D,mode,len,maxf)
cl=sqrt((E*(1-v))/(D*(1+v)*(1-2*v)));
cs=sqrt(E/(2*D*(1+v)));
f=len:len:maxf; %Frequencies
%Initial BC
cpa=zeros(length(f),mode);
cps=zeros(length(f),mode);
end

