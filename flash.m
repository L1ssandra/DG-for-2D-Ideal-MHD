%flashRotor2.m
%QFP = QFE - 0.5*(QFrhou.^2 + QFrhov.^2)./QFrho - 0.5*(QFB1.^2 + QFB2.^2);
%QBP = 0.5*(QFB1.^2 + QFB2.^2);
Qplot = QFrho;
Xquad = zeros(1,Nx*quad);
Yquad = zeros(1,Ny*quad);

for i = 1:Nx
    Xquad((i - 1)*quad + 1:i*quad) = Xc(i) + lambdax;
end

for j = 1:Ny
    Yquad((j - 1)*quad + 1:j*quad) = Yc(j) + lambday;
end

h = figure();
warning('off','MATLAB:HandleGraphics:ObsoletedProperty:JavaFrame');
jFrame = get(h,'JavaFrame');
pause(0.1);
set(jFrame,'Maximized',1);
pause(0.1);
warning('on','MATLAB:HandleGraphics:ObsoletedProperty:JavaFrame');

[xc,yc] = meshgrid(Yquad,Xquad);
xlabel('X');
ylabel('Y');
grid on;
%s = [X(1),X(end),Y(1),Y(end),min(min(min(Q(:,:,:,4)))) - 0.1,max(max(max(Q(:,:,:,4)))) + 0.1];
s = [Xc(1),Xc(end),Yc(1),Yc(end),min(min(min(Qplot))) - 0.01,max(max(max(Qplot))) + 0.01];
%s = [Xc(1),Xc(end),Yc(1),Yc(end),-0.15,0.15];
%s = [Xc(1),Xc(end),Yc(1),Yc(end),0,10];


TT = 100;
t0 = T(end)/TT;
for i = 1:TT + 1
    tt = (i - 1)*t0;
    [~,j] = min(abs(T - tt));
    %mesh(xc,yc,Qplot(:,:,j));axis(s);colormap(cool)
    contour(yc,xc,Qplot(:,:,j),15);colormap(cool)
    title(T(j))
    pause(0.0001);
end
%mesh(yc,xc,Q1(:,:,j))
%axis(s)
%plot(T,DIV);
% contour(Xc,Yc,QF(:,:,j,1),25);

% figure(2)
% colormap(hot)
% contourf(yc,xc,Q1(:,:,j),15);
% 
% figure(3)
% colormap(hot)
% contourf(yc,xc,QBP(:,:,j),15);
% 
% figure(4)
% colormap(hot)
% contourf(yc,xc,QP(:,:,j),15);
% 
% figure(5)
% colormap(hot)
% contourf(yc,xc,QMach(:,:,j),15);