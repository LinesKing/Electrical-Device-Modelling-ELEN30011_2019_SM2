clear all
close all
clc

phi = 0:.25*pi:2*pi;
r = [0:.2:.8 1:.5:3];
z = 0:.5:2;
[pp,rr,zz] = meshgrid(phi,r,z);
xx = rr.*cos(pp);
yy = rr.*sin(pp);
Exx = -((rr.^2/2/pi).*(rr>=0&rr<=1) + (rr.^(-1)/2/pi).*(rr>1)).*sin(pp);
Eyy = ((rr.^2/2/pi).*(rr>=0&rr<=1) + (rr.^(-1)/2/pi).*(rr>1)).*cos(pp);
Ezz = 0*zz;
figure(1);
quiver3(xx,yy,zz,Exx,Eyy,Ezz,1);
grid on;
axis([-3 3 -3 3 -3 3]);
xlabel('x'); ylabel('y'); zlabel('z');