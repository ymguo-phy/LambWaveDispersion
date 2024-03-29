% LAMB WAVE DISPERSION CURVE EDITOR
% E = Young's Modulus 
% v = Poisson's Ratio
% D = Density
% d = Material Thickness
% mode = Number of modes 
% len = Minimum interval
% maxf = Maximum Frequency.
% vps and vpa are phase velocities of symmetric and antisymmetric modes
% respectively, similarly for vga and vgs
% For Example
%[vps,vpa,vgs,vga] = LambDispersion(7.24e+10,0.33,2780,0.001,8,10,20000)
function [vps,vpa,vgs,vga] = LambDispersion(E,v,D,d,mode,len,maxf)

[x1,vps,vpa,vgs,vga]= disper(E,v,D,mode,len,maxf);
mo = mode;
figure
hold on
x1 = x1/d;
x2 = x1/d;
cpp = vps(1:end,1);
plot(x1(1,1:end),cpp,'-b')
hold on
cpp = vpa(1:end,1);
plot(x1(1,1:end),cpp,'--r')
l2 = length(x1);

for a = 2:mo  %Phase Velocity Symmetric
    z = vps(1:end,a)<1;
    s1 = length(find(z==1));
 x4 = x1(1,s1+1:end);
 v = vps(1:end,a);
 ps = v(s1+1:end,1);
 plot(x4,ps,'-b')
 cpp = vps(:,a);
end
for a = 2:mo   %Phase Velocity AntiSymmetric
    z = vpa(1:end,a)<1;
    s1 = length(find(z==1));
 x4 = x1(1,s1+1:end);
 v = vpa(1:end,a);
 gs = v(s1+1:end,1);
 cpp = vpa(:,a);

 hold on
 plot(x4,gs,'--r')
end
ylim([0 10000]);
grid on 
legend('Symmetric S_0_,_1_,_2,_._._.', 'Anti-Symmetric A_0_,_1_,_2_,_._._.');
title('Phase Velocity')
xlabel('Frequency (KHz)')
ylabel('Phase Velocity ms^-^1')

figure
l = length(x2) ;

cpp = vgs(1:end,1);
plot(x1(1,1:end-1),cpp,'-b')
hold on
cpp = vga(1:end,1);
plot(x1(1,1:end-1),cpp,'--r')

for a = 2:mo  %Phase Velocity Symmetric
    clear z s1 x4 v
    z = vgs(1:end,a)<1;
    s1 = length(find(z==1));
 x4 = x1(1,s1+1:end);
 v = vgs(1:end,a);
 ps = v(s1+1:end,1);
 plot(x4(1:end-1),ps,'-b')
 cpp = vgs(:,a);
end
for a = 2:mo   %Phase Velocity AntiSymmetric
    clear z s1 x4 v
    z = vga(1:end,a)<1;
    s1 = length(find(z==1));
 x4 = x1(1,s1+1:end);
 v = vga(1:end,a);
 gs = v(s1+1:end,1);
 cpp = vga(:,a);

 hold on
 plot(x4(1:end-1),gs,'--r')
end
grid on
legend('Symmetric S_0_,_1_,_2,_._._.', 'Anti-Symmetric A_0_,_1_,_2_,_._._.');
title('Group Velocity')
xlabel('Frequency (KHz)')
ylabel('Group Velocity ms^-^1')
hold off
end

