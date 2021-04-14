clear all
close all
clc

%a%
x = -2:.05:2;
y = -2:.05:2;
[xx,yy] = meshgrid(x,y);
size(xx)
size(yy)

%b%
zz = xx.^2 + 2*yy.^2;
figure(1);
surfl(xx,yy,zz);
xlabel('x');
ylabel('y');
zlabel('Function f(x,y)');
grid on;

%d%
figure(2);
contour(xx,yy,zz,20);
xlabel('x');
ylabel('y');
grid on;

%e%
fxx = 2*xx; fyy = 4*yy;
figure(3);
quiver(xx,yy,fxx,fyy);

%f%
xnew = -2:.25:2;
ynew = xnew;
[xxnew, yynew] = meshgrid(xnew,ynew);
fxxnew = 2*xxnew;
fyynew = 4*yynew;
figure(3);
quiver(xxnew,yynew,fxxnew,fyynew);

%g%
figure(2);
hold on;
quiver(xxnew,yynew,fxxnew,fyynew);

%h%
figure(4);
contour(xx,yy,zz,20);
xlabel('x');
ylabel('y');
grid on;
hold on;
Fxxnew = 2*yynew;
Fyynew = -1*xxnew;
figure(4);
quiver(xxnew,yynew,Fxxnew,Fyynew);
hold on;
figure(4);
quiver(xxnew,yynew,fxxnew,fyynew);