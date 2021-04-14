clear all
close all
clc

theta = 0:.25*pi:pi;
phi = 0:.25*pi:2*pi;
r = [0:.2:.8 1:.5:3];
[tt,pp,rr] = meshgrid(theta,phi,r);
xx = rr.*sin(tt).*cos(pp);
yy = rr.*sin(tt).*sin(pp);
zz = rr.*cos(tt);
Exx = ((rr.^2/4).*(rr>=0&rr<=1) + ((rr.^(-2)/4)).*(rr>1)).*sin(tt).*cos(pp);
Eyy = ((rr.^2/4).*(rr>=0&rr<=1) + ((rr.^(-2)/4)).*(rr>1)).*sin(tt).*sin(pp);
Ezz = ((rr.^2/4).*(rr>=0&rr<=1) + ((rr.^(-2)/4)).*(rr>1)).*cos(tt);
figure(1);
quiver3(xx,yy,zz,Exx,Eyy,Ezz,1);
grid on;
axis([-3 3 -3 3 -3 3]);
xlabel('x'); ylabel('y'); zlabel('z');