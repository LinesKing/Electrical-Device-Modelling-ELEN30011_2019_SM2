clear all
close all
clc

%b%
XC=0;YC=0;ZC=0;XR=1;YR=1;ZR=2;N=40;
[xx,yy,zz] = ellipsoid(XC,YC,ZC,XR,YR,ZR,N);
figure(10);
surfl(xx,yy,zz);
xlabel('x'); ylabel('y'); zlabel('z')
grid on;
axis([-2 2 -2 2 -2 2]);

%d%
x = -2:.5:2;
y = x; z = x;
[xx,yy,zz] = meshgrid(x,y,z);
Fxx = 2*xx;
Fyy = 2*yy;
Fzz = 1/2*zz;
figure(11);
quiver3(xx,yy,zz,Fxx,Fyy,Fzz);

%e%
[xx,yy,zz] = ellipsoid(XC,YC,ZC,XR,YR,ZR,N);
Fxx = 2*xx;
Fyy = 2*yy;
Fzz = 1/2*zz;
figure(12);
quiver3(xx,yy,zz,Fxx,Fyy,Fzz);
axis([-2 2 -2 2 -2 2]);

%f%
XC=0;YC=0;ZC=0;XR=1;YR=1;ZR=2;;N1=40;N2=10;
[xx,yy,zz] = ellipsoid(XC,YC,ZC,XR,YR,ZR,N1);
figure(13);
surfl(xx,yy,zz);
xlabel('x'); ylabel('y'); zlabel('z')
grid on;
axis([-2 2 -2 2 -2 2]);
hold on;
[xx,yy,zz] = ellipsoid(XC,YC,ZC,XR,YR,ZR,N2);
Fxx = 2*xx;
Fyy = 2*yy;
Fzz = 1/2*zz;
figure(13);
quiver3(xx,yy,zz,Fxx,Fyy,Fzz);
axis([-2 2 -2 2 -2 2]);