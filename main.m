% main.m 主程序 P2多项式空间
clear;clc; % 清屏

% 初始化
global Nx Ny hx hy hx1 hy1 Xc Yc quad
xa = 0; xb = 2*pi;
ya = 0; yb = 2*pi; % 求解域
tend = 0.5; % 终止时间
k = 2; % 多项式次数
RKorder = 3; % RK阶数
if RKorder == 1
    CFL = 0.05; % CFL数
elseif RKorder == 3
    CFL = 0.2;
end
Nx = 60;
Ny = 60; % 剖分段数
quad = 4; % Gauss-Legendre积分点个数
hx = (xb - xa)/Nx; hx1 = hx/2;
hy = (yb - ya)/Ny; hy1 = hy/2;

M = 0; % TVB参数

% 边界条件
% 1:周期边界 2:入流/出流边界
Bound_ConditionR = 1;
Bound_ConditionL = 1;
Bound_ConditionU = 1;
Bound_ConditionD = 1;

X = xa:hx:xb; Y = ya:hy:yb;
Xc = 0.5*(X(1:end - 1) + X(2:end));
Yc = 0.5*(Y(1:end - 1) + Y(2:end));

% 初值
global gamma
gamma = 5/3;
r2 = @(x,y) x.^2 + y.^2;

% 平移Vortex
% rho = @(x,y) 1 + 0.*x;
% u = @(x,y) 1 - 1./(2.*pi).*y.*exp(0.5.*(1 - r2(x,y)));
% v = @(x,y) 1 + 1./(2.*pi).*x.*exp(0.5.*(1 - r2(x,y)));
% p = @(x,y) 1 - r2(x,y)./(8.*pi.^2).*exp(1 - r2(x,y));
% B1 = @(x,y) -1./(2.*pi).*y.*exp(0.5.*(1 - r2(x,y)));
% B2 = @(x,y) 1./(2.*pi).*x.*exp(0.5.*(1 - r2(x,y)));

% Orszag-Tang Vortex
rho = @(x,y) gamma^2 + 0.*x;
u = @(x,y) -sin(y);
v = @(x,y) sin(x);
p = @(x,y) gamma + 0.*x;
B1 = @(x,y) -sin(y);
B2 = @(x,y) sin(2.*x);

% Rotor
% rho = @(x,y) rho0(x,y);
% u = @(x,y) ux0(x,y);
% v = @(x,y) uy0(x,y);
% p = @(x,y) 0.5;
% B1 = @(x,y) 2.4/sqrt(4*pi);
% B2 = @(x,y) 0.*x;

rhou = @(x,y) rho(x,y).*u(x,y);
rhov = @(x,y) rho(x,y).*v(x,y);
E = @(x,y) p(x,y)./(gamma - 1) + 0.5.*rho(x,y).*(u(x,y).^2 + v(x,y).^2) + 0.5.*(B1(x,y).^2 + B2(x,y).^2);

if k == 0
    Phi1 = @(x,y) 1 + 0.*x;
    Phi2 = @(x,y) 0.*x;
    Phi3 = @(x,y) 0.*x;
    Phi4 = @(x,y) 0.*x;
    Phi5 = @(x,y) 0.*x;
    Phi6 = @(x,y) 0.*x;
    
    Phi1x = @(x,y) 0.*x;
    Phi2x = @(x,y) 0.*x;
    Phi3x = @(x,y) 0.*x;
    Phi4x = @(x,y) 0.*x;
    Phi5x = @(x,y) 0.*x;
    Phi6x = @(x,y) 0.*x;
    
    Phi1y = @(x,y) 0.*x;
    Phi2y = @(x,y) 0.*x;
    Phi3y = @(x,y) 0.*x;
    Phi4y = @(x,y) 0.*x;
    Phi5y = @(x,y) 0.*x;
    Phi6y = @(x,y) 0.*x;
elseif k == 1
    Phi1 = @(x,y) 1 + 0.*x;
    Phi2 = @(x,y) x./hx1;
    Phi3 = @(x,y) y./hy1;
    Phi4 = @(x,y) 0.*x;
    Phi5 = @(x,y) 0.*x;
    Phi6 = @(x,y) 0.*x;
    
    Phi1x = @(x,y) 0.*x;
    Phi2x = @(x,y) 1./hx1;
    Phi3x = @(x,y) 0.*x;
    Phi4x = @(x,y) 0.*x;
    Phi5x = @(x,y) 0.*x;
    Phi6x = @(x,y) 0.*x;
    
    Phi1y = @(x,y) 0.*x;
    Phi2y = @(x,y) 0.*x;
    Phi3y = @(x,y) 1./hy1;
    Phi4y = @(x,y) 0.*x;
    Phi5y = @(x,y) 0.*x;
    Phi6y = @(x,y) 0.*x;
elseif k == 2
    Phi1 = @(x,y) 1 + 0.*x;
    Phi2 = @(x,y) x./hx1;
    Phi3 = @(x,y) y./hy1;
    Phi4 = @(x,y) (x./hx1).^2 - 1/3;
    Phi5 = @(x,y) (x.*y)./(hx1.*hy1);
    Phi6 = @(x,y) (y./hy1).^2 - 1/3;
    
    Phi1x = @(x,y) 0.*x;
    Phi2x = @(x,y) 1./hx1;
    Phi3x = @(x,y) 0.*x;
    Phi4x = @(x,y) 2.*x/hx1.^2;
    Phi5x = @(x,y) y./(hx1*hy1);
    Phi6x = @(x,y) 0.*x;
    
    Phi1y = @(x,y) 0.*x;
    Phi2y = @(x,y) 0.*x;
    Phi3y = @(x,y) 1./hy1;
    Phi4y = @(x,y) 0.*x;
    Phi5y = @(x,y) x./(hx1*hy1);
    Phi6y = @(x,y) 2.*y/hy1.^2;
end

global lambdax lambday

[lambda,weight] = GetGaussPoint(quad); % 获取积分点向量lambda和权重向量weight
lambdax = hx1*lambda;
lambday = hy1*lambda;

% 构造多项式矩阵
global VALUEINT1 VALUEINT2 VALUEINT3 VALUEINT4 VALUEINT5 VALUEINT6
global VALUEINTB1 VALUEINTB2 VALUEINTB3 VALUEINTB4 VALUEINTB5 VALUEINTB6 % 加边界条件的多项式矩阵
global VALUEINTx1 VALUEINTx2 VALUEINTx3 VALUEINTx4 VALUEINTx5 VALUEINTx6
global VALUEINTy1 VALUEINTy2 VALUEINTy3 VALUEINTy4 VALUEINTy5 VALUEINTy6
global VALUER1 VALUER2 VALUER3 VALUER4 VALUER5 VALUER6
global VALUEL1 VALUEL2 VALUEL3 VALUEL4 VALUEL5 VALUEL6
global VALUEU1 VALUEU2 VALUEU3 VALUEU4 VALUEU5 VALUEU6
global VALUED1 VALUED2 VALUED3 VALUED4 VALUED5 VALUED6

ValueINT1 = zeros(quad,quad);
ValueINT2 = zeros(quad,quad);
ValueINT3 = zeros(quad,quad);
ValueINT4 = zeros(quad,quad);
ValueINT5 = zeros(quad,quad);
ValueINT6 = zeros(quad,quad);

ValueINTx1 = zeros(quad,quad);
ValueINTx2 = zeros(quad,quad);
ValueINTx3 = zeros(quad,quad);
ValueINTx4 = zeros(quad,quad);
ValueINTx5 = zeros(quad,quad);
ValueINTx6 = zeros(quad,quad);

ValueINTy1 = zeros(quad,quad);
ValueINTy2 = zeros(quad,quad);
ValueINTy3 = zeros(quad,quad);
ValueINTy4 = zeros(quad,quad);
ValueINTy5 = zeros(quad,quad);
ValueINTy6 = zeros(quad,quad);

ValueR1 = zeros(quad,1);
ValueR2 = zeros(quad,1);
ValueR3 = zeros(quad,1);
ValueR4 = zeros(quad,1);
ValueR5 = zeros(quad,1);
ValueR6 = zeros(quad,1);

ValueL1 = zeros(quad,1);
ValueL2 = zeros(quad,1);
ValueL3 = zeros(quad,1);
ValueL4 = zeros(quad,1);
ValueL5 = zeros(quad,1);
ValueL6 = zeros(quad,1);

ValueU1 = zeros(1,quad);
ValueU2 = zeros(1,quad);
ValueU3 = zeros(1,quad);
ValueU4 = zeros(1,quad);
ValueU5 = zeros(1,quad);
ValueU6 = zeros(1,quad);

ValueD1 = zeros(1,quad);
ValueD2 = zeros(1,quad);
ValueD3 = zeros(1,quad);
ValueD4 = zeros(1,quad);
ValueD5 = zeros(1,quad);
ValueD6 = zeros(1,quad);

for i = 1:quad
    for j = 1:quad
        ValueINT1(i,j) = Phi1(lambdax(i),lambday(j));
        ValueINT2(i,j) = Phi2(lambdax(i),lambday(j));
        ValueINT3(i,j) = Phi3(lambdax(i),lambday(j));
        ValueINT4(i,j) = Phi4(lambdax(i),lambday(j));
        ValueINT5(i,j) = Phi5(lambdax(i),lambday(j));
        ValueINT6(i,j) = Phi6(lambdax(i),lambday(j));
        
        ValueINTx1(i,j) = Phi1x(lambdax(i),lambday(j));
        ValueINTx2(i,j) = Phi2x(lambdax(i),lambday(j));
        ValueINTx3(i,j) = Phi3x(lambdax(i),lambday(j));
        ValueINTx4(i,j) = Phi4x(lambdax(i),lambday(j));
        ValueINTx5(i,j) = Phi5x(lambdax(i),lambday(j));
        ValueINTx6(i,j) = Phi6x(lambdax(i),lambday(j));
        
        ValueINTy1(i,j) = Phi1y(lambdax(i),lambday(j));
        ValueINTy2(i,j) = Phi2y(lambdax(i),lambday(j));
        ValueINTy3(i,j) = Phi3y(lambdax(i),lambday(j));
        ValueINTy4(i,j) = Phi4y(lambdax(i),lambday(j));
        ValueINTy5(i,j) = Phi5y(lambdax(i),lambday(j));
        ValueINTy6(i,j) = Phi6y(lambdax(i),lambday(j));
    end
end

for j = 1:quad
    ValueR1(j) = Phi1(hx1,lambday(j));
    ValueR2(j) = Phi2(hx1,lambday(j));
    ValueR3(j) = Phi3(hx1,lambday(j));
    ValueR4(j) = Phi4(hx1,lambday(j));
    ValueR5(j) = Phi5(hx1,lambday(j));
    ValueR6(j) = Phi6(hx1,lambday(j));
    
    ValueL1(j) = Phi1(-hx1,lambday(j));
    ValueL2(j) = Phi2(-hx1,lambday(j));
    ValueL3(j) = Phi3(-hx1,lambday(j));
    ValueL4(j) = Phi4(-hx1,lambday(j));
    ValueL5(j) = Phi5(-hx1,lambday(j));
    ValueL6(j) = Phi6(-hx1,lambday(j));
end

for i = 1:quad
    ValueU1(i) = Phi1(lambdax(i),hy1);
    ValueU2(i) = Phi2(lambdax(i),hy1);
    ValueU3(i) = Phi3(lambdax(i),hy1);
    ValueU4(i) = Phi4(lambdax(i),hy1);
    ValueU5(i) = Phi5(lambdax(i),hy1);
    ValueU6(i) = Phi6(lambdax(i),hy1);
    
    ValueD1(i) = Phi1(lambdax(i),-hy1);
    ValueD2(i) = Phi2(lambdax(i),-hy1);
    ValueD3(i) = Phi3(lambdax(i),-hy1);
    ValueD4(i) = Phi4(lambdax(i),-hy1);
    ValueD5(i) = Phi5(lambdax(i),-hy1);
    ValueD6(i) = Phi6(lambdax(i),-hy1);
end

global S SQ1 S1Q WEIGHT WEIGHTX WEIGHTY WEIGHT2
J = ones(Nx,Ny);
J1 = ones(Nx + 2,Ny + 2);
S = ones(quad,quad);
SQ1 = ones(quad,1);
S1Q = ones(1,quad);

WEIGHT = kron(J,weight*weight');
WEIGHTX = kron(J1,weight');
WEIGHTY = kron(J1,weight);
WEIGHT2 = kron(J1,weight*weight');

VALUEINT1 = kron(J,ValueINT1);
VALUEINT2 = kron(J,ValueINT2);
VALUEINT3 = kron(J,ValueINT3);
VALUEINT4 = kron(J,ValueINT4);
VALUEINT5 = kron(J,ValueINT5);
VALUEINT6 = kron(J,ValueINT6);

VALUEINTB1 = kron(J1,ValueINT1);
VALUEINTB2 = kron(J1,ValueINT2);
VALUEINTB3 = kron(J1,ValueINT3);
VALUEINTB4 = kron(J1,ValueINT4);
VALUEINTB5 = kron(J1,ValueINT5);
VALUEINTB6 = kron(J1,ValueINT6);

VALUEINTx1 = kron(J1,ValueINTx1);
VALUEINTx2 = kron(J1,ValueINTx2);
VALUEINTx3 = kron(J1,ValueINTx3);
VALUEINTx4 = kron(J1,ValueINTx4);
VALUEINTx5 = kron(J1,ValueINTx5);
VALUEINTx6 = kron(J1,ValueINTx6);

VALUEINTy1 = kron(J1,ValueINTy1);
VALUEINTy2 = kron(J1,ValueINTy2);
VALUEINTy3 = kron(J1,ValueINTy3);
VALUEINTy4 = kron(J1,ValueINTy4);
VALUEINTy5 = kron(J1,ValueINTy5);
VALUEINTy6 = kron(J1,ValueINTy6);

VALUER1 = kron(J1,ValueR1');
VALUER2 = kron(J1,ValueR2');
VALUER3 = kron(J1,ValueR3');
VALUER4 = kron(J1,ValueR4');
VALUER5 = kron(J1,ValueR5');
VALUER6 = kron(J1,ValueR6');

VALUEL1 = kron(J1,ValueL1');
VALUEL2 = kron(J1,ValueL2');
VALUEL3 = kron(J1,ValueL3');
VALUEL4 = kron(J1,ValueL4');
VALUEL5 = kron(J1,ValueL5');
VALUEL6 = kron(J1,ValueL6');

VALUEU1 = kron(J1,ValueU1');
VALUEU2 = kron(J1,ValueU2');
VALUEU3 = kron(J1,ValueU3');
VALUEU4 = kron(J1,ValueU4');
VALUEU5 = kron(J1,ValueU5');
VALUEU6 = kron(J1,ValueU6');

VALUED1 = kron(J1,ValueD1');
VALUED2 = kron(J1,ValueD2');
VALUED3 = kron(J1,ValueD3');
VALUED4 = kron(J1,ValueD4');
VALUED5 = kron(J1,ValueD5');
VALUED6 = kron(J1,ValueD6');

% 质量矩阵
global m1 m2 m3 m4 m5 m6
m1 = hx*hy;
m2 = hx*hy/3;
m3 = hx*hy/3;
m4 = 4*hx*hy/45;
m5 = hx*hy/9;
m6 = 4*hx*hy/45;

Urho = zeros(Nx + 2,Ny + 2);
Urhox = zeros(Nx + 2,Ny + 2);
Urhoy = zeros(Nx + 2,Ny + 2);
Urhoxx = zeros(Nx + 2,Ny + 2);
Urhoxy = zeros(Nx + 2,Ny + 2);
Urhoyy = zeros(Nx + 2,Ny + 2);

Urhou = zeros(Nx + 2,Ny + 2);
Urhoux = zeros(Nx + 2,Ny + 2);
Urhouy = zeros(Nx + 2,Ny + 2);
Urhouxx = zeros(Nx + 2,Ny + 2);
Urhouxy = zeros(Nx + 2,Ny + 2);
Urhouyy = zeros(Nx + 2,Ny + 2);

Urhov = zeros(Nx + 2,Ny + 2);
Urhovx = zeros(Nx + 2,Ny + 2);
Urhovy = zeros(Nx + 2,Ny + 2);
Urhovxx = zeros(Nx + 2,Ny + 2);
Urhovxy = zeros(Nx + 2,Ny + 2);
Urhovyy = zeros(Nx + 2,Ny + 2);

UE = zeros(Nx + 2,Ny + 2);
UEx = zeros(Nx + 2,Ny + 2);
UEy = zeros(Nx + 2,Ny + 2);
UExx = zeros(Nx + 2,Ny + 2);
UExy = zeros(Nx + 2,Ny + 2);
UEyy = zeros(Nx + 2,Ny + 2);

UB1 = zeros(Nx + 2,Ny + 2);
UB1x = zeros(Nx + 2,Ny + 2);
UB1y = zeros(Nx + 2,Ny + 2);
UB1xx = zeros(Nx + 2,Ny + 2);
UB1xy = zeros(Nx + 2,Ny + 2);
UB1yy = zeros(Nx + 2,Ny + 2);

UB2 = zeros(Nx + 2,Ny + 2);
UB2x = zeros(Nx + 2,Ny + 2);
UB2y = zeros(Nx + 2,Ny + 2);
UB2xx = zeros(Nx + 2,Ny + 2);
UB2xy = zeros(Nx + 2,Ny + 2);
UB2yy = zeros(Nx + 2,Ny + 2);

% 获取初值
[Urho(2:end - 1,2:end - 1),Urhox(2:end - 1,2:end - 1),Urhoy(2:end - 1,2:end - 1),Urhoxx(2:end - 1,2:end - 1),Urhoxy(2:end - 1,2:end - 1),Urhoyy(2:end - 1,2:end - 1)] = L2pro(Urho(2:end - 1,2:end - 1),Urhox(2:end - 1,2:end - 1),Urhoy(2:end - 1,2:end - 1),Urhoxx(2:end - 1,2:end - 1),Urhoxy(2:end - 1,2:end - 1),Urhoyy(2:end - 1,2:end - 1),rho);
[Urhou(2:end - 1,2:end - 1),Urhoux(2:end - 1,2:end - 1),Urhouy(2:end - 1,2:end - 1),Urhouxx(2:end - 1,2:end - 1),Urhouxy(2:end - 1,2:end - 1),Urhouyy(2:end - 1,2:end - 1)] = L2pro(Urhou(2:end - 1,2:end - 1),Urhoux(2:end - 1,2:end - 1),Urhouy(2:end - 1,2:end - 1),Urhouxx(2:end - 1,2:end - 1),Urhouxy(2:end - 1,2:end - 1),Urhouyy(2:end - 1,2:end - 1),rhou);
[Urhov(2:end - 1,2:end - 1),Urhovx(2:end - 1,2:end - 1),Urhovy(2:end - 1,2:end - 1),Urhovxx(2:end - 1,2:end - 1),Urhovxy(2:end - 1,2:end - 1),Urhovyy(2:end - 1,2:end - 1)] = L2pro(Urhov(2:end - 1,2:end - 1),Urhovx(2:end - 1,2:end - 1),Urhovy(2:end - 1,2:end - 1),Urhovxx(2:end - 1,2:end - 1),Urhovxy(2:end - 1,2:end - 1),Urhovyy(2:end - 1,2:end - 1),rhov);
[UE(2:end - 1,2:end - 1),UEx(2:end - 1,2:end - 1),UEy(2:end - 1,2:end - 1),UExx(2:end - 1,2:end - 1),UExy(2:end - 1,2:end - 1),UEyy(2:end - 1,2:end - 1)] = L2pro(UE(2:end - 1,2:end - 1),UEx(2:end - 1,2:end - 1),UEy(2:end - 1,2:end - 1),UExx(2:end - 1,2:end - 1),UExy(2:end - 1,2:end - 1),UEyy(2:end - 1,2:end - 1),E);
[UB1(2:end - 1,2:end - 1),UB1x(2:end - 1,2:end - 1),UB1y(2:end - 1,2:end - 1),UB1xx(2:end - 1,2:end - 1),UB1xy(2:end - 1,2:end - 1),UB1yy(2:end - 1,2:end - 1)] = L2pro(UB1(2:end - 1,2:end - 1),UB1x(2:end - 1,2:end - 1),UB1y(2:end - 1,2:end - 1),UB1xx(2:end - 1,2:end - 1),UB1xy(2:end - 1,2:end - 1),UB1yy(2:end - 1,2:end - 1),B1);
[UB2(2:end - 1,2:end - 1),UB2x(2:end - 1,2:end - 1),UB2y(2:end - 1,2:end - 1),UB2xx(2:end - 1,2:end - 1),UB2xy(2:end - 1,2:end - 1),UB2yy(2:end - 1,2:end - 1)] = L2pro(UB2(2:end - 1,2:end - 1),UB2x(2:end - 1,2:end - 1),UB2y(2:end - 1,2:end - 1),UB2xx(2:end - 1,2:end - 1),UB2xy(2:end - 1,2:end - 1),UB2yy(2:end - 1,2:end - 1),B2);

Qrho = GetGaussValue(Urho,Urhox,Urhoy,Urhoxx,Urhoxy,Urhoyy);
Qrhou = GetGaussValue(Urhou,Urhoux,Urhouy,Urhouxx,Urhouxy,Urhouyy);
Qrhov = GetGaussValue(Urhov,Urhovx,Urhovy,Urhovxx,Urhovxy,Urhovyy);
QE = GetGaussValue(UE,UEx,UEy,UExx,UExy,UEyy);
QB1 = GetGaussValue(UB1,UB1x,UB1y,UB1xx,UB1xy,UB1yy);
QB2 = GetGaussValue(UB2,UB2x,UB2y,UB2xx,UB2xy,UB2yy);

QFrho = Qrho;
QFrhou = Qrhou;
QFrhov = Qrhov;
QFE = QE;
QFB1 = QB1;
QFB2 = QB2;

% figure(1);mesh(Qrho)
% figure(2);mesh(Qrhou)
% figure(3);mesh(Qrhov)
% figure(4);mesh(QE)
% figure(5);mesh(QB1)
% figure(6);mesh(QB2)

t = 0;
T = 0;

% 赋边界条件
Add_Bound_Condition

% 开始迭代
while t < tend
    
    alphax = max(max(abs(ComputeMaxWaveSpeedX(Qrho,Qrhou,Qrhov,QE,QB1,QB2))));
    alphay = max(max(abs(ComputeMaxWaveSpeedY(Qrho,Qrhou,Qrhov,QE,QB1,QB2))));
    
    dt = CFL/(alphax/hx + alphay/hy);
    
    fprintf('当前迭代到t = %d, 已完成%%%d\n',t,floor(100*(t/tend)));
    
    if t + dt < tend
        t = t + dt;
    else
        dt = tend - t;
        t = tend;
    end
    
    T = [T;t];
    
    if RKorder == 1
        Euler
        update
        Add_Bound_Condition
        Save_Image
    elseif RKorder == 3
        % stage 1
        Euler
        update1
        Add_Bound_Condition
        % stage 2
        Euler
        update2
        Add_Bound_Condition
        % stage 3
        Euler
        update3
        Add_Bound_Condition
        Save_Image
    end
end

fprintf('当前迭代到t = %d, 已完成%%%d\n',t,floor(100*(t/tend)));

Qrho = GetGaussValue(Urho,Urhox,Urhoy,Urhoxx,Urhoxy,Urhoyy);
Qrhou = GetGaussValue(Urhou,Urhoux,Urhouy,Urhouxx,Urhouxy,Urhouyy);
Qrhov = GetGaussValue(Urhov,Urhovx,Urhovy,Urhovxx,Urhovxy,Urhovyy);
QE = GetGaussValue(UE,UEx,UEy,UExx,UExy,UEyy);
QB1 = GetGaussValue(UB1,UB1x,UB1y,UB1xx,UB1xy,UB1yy);
QB2 = GetGaussValue(UB2,UB2x,UB2y,UB2xx,UB2xy,UB2yy);

flash