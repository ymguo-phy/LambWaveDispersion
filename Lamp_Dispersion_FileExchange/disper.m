function [f,vps,vpa,vgs,vgaa]= disper(E,v,D,mod,len,maxf)
[cl,cs,cpa,cps,f] = Conf_values(E,v,D,mod,len,maxf);
dfd=len;
%Initial BC
cp_min=100;
cp_max=10000;
tol=1e-8; %tolerence value for bisection method
for i=1:length(f)
    fd=f(i);
    [cp12 n]=symmode(cp_min,cp_max,fd,cl,cs,mod,1);
    for j=1:n
        cp1=cp12(j,1);
        cp2=cp12(j,2);
        vps(i,j)=findroots(cp1,cp2,fd,cl,cs,tol,1);
    end
    
    [cp12, n]=symmode(cp_min,cp_max,fd,cl,cs,mod,2);
    for j=1:n
        cp1=cp12(j,1);
        cp2=cp12(j,2);
        vpa(i,j)=findroots(cp1,cp2,fd,cl,cs,tol,2);
    end
    
  %Now calculating group velocities.
end
    for j=1:1:mod
      cg = vps(:,j);
      dif=diff(cg)/len;
      vgs(:,j)=cg(1:end-1).^2./(cg(1:end-1)-f(1:end-1)'.*dif);

      cg = vpa(:,j);
      dif=diff(cg)/len;
      vgaa(:,j)=cg(1:end-1).^2./(cg(1:end-1)-f(1:end-1)'.*dif);     
 end
 vgs(isnan(vgs))=0;
 vgaa(isnan(vgaa))=0;
end
