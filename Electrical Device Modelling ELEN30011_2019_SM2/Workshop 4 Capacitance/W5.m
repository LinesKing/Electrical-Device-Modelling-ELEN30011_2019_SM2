clear all
close all
clc

%% 2.1.6
h = 2;
a = .05:.05:1.95;
k = h./a + sqrt((h./a).^2 - 1);
s = (k.^2-1).*a./k/2;
figure(1);
plot(a,s);
xlabel('Wire radius, a');
ylabel('Line charge position, s');
grid on;
axis([0 2 0 2]);

%% 2.3.3
a = 1; h = 2;
k = h/a + sqrt((h/a)^2-1); s = (k^2-1)/k*a/2;
x = -4:.25:4; y = x;
[xx,yy] = meshgrid(x,y);
outofleftcirc = ((xx+h).^2 + yy.^2 - a*a)>=0;
outofrightcirc = ((xx-h).^2 + yy.^2 - a*a)>=0;
cc = outofleftcirc.*outofrightcirc;
den = ((s-xx).^2 + yy.^2).*((s+xx).^2 + yy.^2);
numxx = s*(s^2 - xx.^2 + yy.^2);
numyy = -2*s.*xx.*yy;
Exx = -numxx./den.*cc;
Eyy = -numyy./den.*cc;
figure(2);
quiver(xx,yy,Exx,Eyy);
xlabel('x'); ylabel('y');
grid on;

%% 2.3.5
hold on;
x = -4:.05:4; y = x;
[xx,yy] = meshgrid(x,y);
outofleftcirc = ((xx+h).^2 + yy.^2 - a*a)>=0;
outofrightcirc = ((xx-h).^2 + yy.^2 - a*a)>=0;
cc = outofleftcirc.*outofrightcirc;
den = ((s-xx).^2 + yy.^2).*((s+xx).^2 + yy.^2);
numxx = s*(s^2 - xx.^2 + yy.^2);
numyy = -2*s.*xx.*yy;
Exx = -numxx./den.*cc;
Eyy = -numyy./den.*cc;
E = -numxx./den.*cc.*xx-numyy./den.*cc.*yy;
contour(xx,yy,E,60);