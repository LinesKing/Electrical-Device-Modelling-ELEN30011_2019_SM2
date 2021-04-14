clear all
close all
clc

%a%
x = -2:1:2;
y = x;
z = x;
[xx,yy,zz] = meshgrid(x,y,z);
Fxx = xx;
Fyy = 0*yy;
Fzz = zz;
figure(1);
quiver3(xx,yy,zz,Fxx,Fyy,Fzz);
divb = divergence(xx,yy,zz,Fxx,Fyy,Fzz);
curlb = curl(xx,yy,zz,Fxx,Fyy,Fzz);

%b%
x = -2:1:2;
y = x;
z = x;
[xx,yy,zz] = meshgrid(x,y,z);
Fxx = zz;
Fyy = 0*yy;
Fzz = -xx;
figure(2);
quiver3(xx,yy,zz,Fxx,Fyy,Fzz);
divc = divergence(xx,yy,zz,Fxx,Fyy,Fzz);
curlc = curl(xx,yy,zz,Fxx,Fyy,Fzz);