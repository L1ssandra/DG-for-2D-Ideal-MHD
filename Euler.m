% Euler.m 单步空间离散

% 体积分 \int_K (f(u)·▽phi) dx

% 计算所有Gauss点上的u值
Qrho = GetGaussValue1(Urho,Urhox,Urhoy,Urhoxx,Urhoxy,Urhoyy);
Qrhou = GetGaussValue1(Urhou,Urhoux,Urhouy,Urhouxx,Urhouxy,Urhouyy);
Qrhov = GetGaussValue1(Urhov,Urhovx,Urhovy,Urhovxx,Urhovxy,Urhovyy);
QE = GetGaussValue1(UE,UEx,UEy,UExx,UExy,UEyy);
QB1 = GetGaussValue1(UB1,UB1x,UB1y,UB1xx,UB1xy,UB1yy);
QB2 = GetGaussValue1(UB2,UB2x,UB2y,UB2xx,UB2xy,UB2yy);

% 计算通量
[f1,f2,f3,f4,f5,f6,g1,g2,g3,g4,g5,g6] = MHD_Flux(Qrho,Qrhou,Qrhov,QE,QB1,QB2);

% 计算Gauss积分
DQrhoxINT = GaussIntegral2D(f1,g1,VALUEINTx2,VALUEINTy2);
DQrhoyINT = GaussIntegral2D(f1,g1,VALUEINTx3,VALUEINTy3);
DQrhoxxINT = GaussIntegral2D(f1,g1,VALUEINTx4,VALUEINTy4);
DQrhoxyINT = GaussIntegral2D(f1,g1,VALUEINTx5,VALUEINTy5);
DQrhoyyINT = GaussIntegral2D(f1,g1,VALUEINTx6,VALUEINTy6);

DQrhouxINT = GaussIntegral2D(f2,g2,VALUEINTx2,VALUEINTy2);
DQrhouyINT = GaussIntegral2D(f2,g2,VALUEINTx3,VALUEINTy3);
DQrhouxxINT = GaussIntegral2D(f2,g2,VALUEINTx4,VALUEINTy4);
DQrhouxyINT = GaussIntegral2D(f2,g2,VALUEINTx5,VALUEINTy5);
DQrhouyyINT = GaussIntegral2D(f2,g2,VALUEINTx6,VALUEINTy6);

DQrhovxINT = GaussIntegral2D(f3,g3,VALUEINTx2,VALUEINTy2);
DQrhovyINT = GaussIntegral2D(f3,g3,VALUEINTx3,VALUEINTy3);
DQrhovxxINT = GaussIntegral2D(f3,g3,VALUEINTx4,VALUEINTy4);
DQrhovxyINT = GaussIntegral2D(f3,g3,VALUEINTx5,VALUEINTy5);
DQrhovyyINT = GaussIntegral2D(f3,g3,VALUEINTx6,VALUEINTy6);

DQExINT = GaussIntegral2D(f4,g4,VALUEINTx2,VALUEINTy2);
DQEyINT = GaussIntegral2D(f4,g4,VALUEINTx3,VALUEINTy3);
DQExxINT = GaussIntegral2D(f4,g4,VALUEINTx4,VALUEINTy4);
DQExyINT = GaussIntegral2D(f4,g4,VALUEINTx5,VALUEINTy5);
DQEyyINT = GaussIntegral2D(f4,g4,VALUEINTx6,VALUEINTy6);

DQB1xINT = GaussIntegral2D(f5,g5,VALUEINTx2,VALUEINTy2);
DQB1yINT = GaussIntegral2D(f5,g5,VALUEINTx3,VALUEINTy3);
DQB1xxINT = GaussIntegral2D(f5,g5,VALUEINTx4,VALUEINTy4);
DQB1xyINT = GaussIntegral2D(f5,g5,VALUEINTx5,VALUEINTy5);
DQB1yyINT = GaussIntegral2D(f5,g5,VALUEINTx6,VALUEINTy6);

DQB2xINT = GaussIntegral2D(f6,g6,VALUEINTx2,VALUEINTy2);
DQB2yINT = GaussIntegral2D(f6,g6,VALUEINTx3,VALUEINTy3);
DQB2xxINT = GaussIntegral2D(f6,g6,VALUEINTx4,VALUEINTy4);
DQB2xyINT = GaussIntegral2D(f6,g6,VALUEINTx5,VALUEINTy5);
DQB2yyINT = GaussIntegral2D(f6,g6,VALUEINTx6,VALUEINTy6);

% 计算所有的数值通量
[QrhoR,QrhoL] = GetGaussValueRL(Urho,Urhox,Urhoy,Urhoxx,Urhoxy,Urhoyy);
[QrhouR,QrhouL] = GetGaussValueRL(Urhou,Urhoux,Urhouy,Urhouxx,Urhouxy,Urhouyy);
[QrhovR,QrhovL] = GetGaussValueRL(Urhov,Urhovx,Urhovy,Urhovxx,Urhovxy,Urhovyy);
[QER,QEL] = GetGaussValueRL(UE,UEx,UEy,UExx,UExy,UEyy);
[QB1R,QB1L] = GetGaussValueRL(UB1,UB1x,UB1y,UB1xx,UB1xy,UB1yy);
[QB2R,QB2L] = GetGaussValueRL(UB2,UB2x,UB2y,UB2xx,UB2xy,UB2yy);

[QrhoU,QrhoD] = GetGaussValueUD(Urho,Urhox,Urhoy,Urhoxx,Urhoxy,Urhoyy);
[QrhouU,QrhouD] = GetGaussValueUD(Urhou,Urhoux,Urhouy,Urhouxx,Urhouxy,Urhouyy);
[QrhovU,QrhovD] = GetGaussValueUD(Urhov,Urhovx,Urhovy,Urhovxx,Urhovxy,Urhovyy);
[QEU,QED] = GetGaussValueUD(UE,UEx,UEy,UExx,UExy,UEyy);
[QB1U,QB1D] = GetGaussValueUD(UB1,UB1x,UB1y,UB1xx,UB1xy,UB1yy);
[QB2U,QB2D] = GetGaussValueUD(UB2,UB2x,UB2y,UB2xx,UB2xy,UB2yy);

[FR1,FR2,FR3,FR4,FR5,FR6] = MHD_XFlux(QrhoR,QrhouR,QrhovR,QER,QB1R,QB2R);
[FL1,FL2,FL3,FL4,FL5,FL6] = MHD_XFlux(QrhoL,QrhouL,QrhovL,QEL,QB1L,QB2L);
[GU1,GU2,GU3,GU4,GU5,GU6] = MHD_YFlux(QrhoU,QrhouU,QrhovU,QEU,QB1U,QB2U);
[GD1,GD2,GD3,GD4,GD5,GD6] = MHD_YFlux(QrhoD,QrhouD,QrhovD,QED,QB1D,QB2D);

H11 = zeros(Nx + 1,(Ny + 2)*quad);
H12 = zeros(Nx + 1,(Ny + 2)*quad);
H13 = zeros(Nx + 1,(Ny + 2)*quad);
H14 = zeros(Nx + 1,(Ny + 2)*quad);
H15 = zeros(Nx + 1,(Ny + 2)*quad);
H16 = zeros(Nx + 1,(Ny + 2)*quad);

H21 = zeros((Nx + 2)*quad,Ny + 1);
H22 = zeros((Nx + 2)*quad,Ny + 1);
H23 = zeros((Nx + 2)*quad,Ny + 1);
H24 = zeros((Nx + 2)*quad,Ny + 1);
H25 = zeros((Nx + 2)*quad,Ny + 1);
H26 = zeros((Nx + 2)*quad,Ny + 1);

alphaxMaxR = ComputeMaxWaveSpeedX(QrhoR,QrhouR,QrhovR,QER,QB1R,QB2R);
alphaxMaxL = ComputeMaxWaveSpeedX(QrhoL,QrhouL,QrhovL,QEL,QB1L,QB2L);
alphayMaxU = ComputeMaxWaveSpeedY(QrhoU,QrhouU,QrhovU,QEU,QB1U,QB2U);
alphayMaxD = ComputeMaxWaveSpeedY(QrhoD,QrhouD,QrhovD,QED,QB1D,QB2D);

alphaxMinR = ComputeMinWaveSpeedX(QrhoR,QrhouR,QrhovR,QER,QB1R,QB2R);
alphaxMinL = ComputeMinWaveSpeedX(QrhoL,QrhouL,QrhovL,QEL,QB1L,QB2L);
alphayMinU = ComputeMinWaveSpeedY(QrhoU,QrhouU,QrhovU,QEU,QB1U,QB2U);
alphayMinD = ComputeMinWaveSpeedY(QrhoD,QrhouD,QrhovD,QED,QB1D,QB2D);

alphaxMax = zeros(Nx + 1,(Ny + 2)*quad);
alphaxMin = zeros(Nx + 1,(Nx + 2)*quad);
alphayMax = zeros((Nx + 2)*quad,Ny + 1);
alphayMin = zeros((Nx + 2)*quad,Ny + 1);

for i = 1:Nx + 1
    for j = 1:(Ny + 2)*quad
        alphaxMax(i,j) = max(alphaxMaxR(i,j),alphaxMaxL(i + 1,j));
        alphaxMin(i,j) = min(alphaxMinR(i,j),alphaxMinL(i + 1,j));
    end
end

for i = 1:(Nx + 2)*quad
    for j = 1:Ny + 1
        alphayMax(i,j) = max(alphayMaxU(i,j),alphayMaxD(i,j + 1));
        alphayMin(i,j) = min(alphayMinU(i,j),alphayMinD(i,j + 1));
    end
end

for i = 1:Nx + 1
    for j = quad + 1:(Ny + 1)*quad
        H11(i,j) = Compute_Flux(QrhoR(i,j),QrhoL(i + 1,j),FR1(i,j),FL1(i + 1,j),alphaxMax(i,j),alphaxMin(i,j));
        H12(i,j) = Compute_Flux(QrhouR(i,j),QrhouL(i + 1,j),FR2(i,j),FL2(i + 1,j),alphaxMax(i,j),alphaxMin(i,j));
        H13(i,j) = Compute_Flux(QrhovR(i,j),QrhovL(i + 1,j),FR3(i,j),FL3(i + 1,j),alphaxMax(i,j),alphaxMin(i,j));
        H14(i,j) = Compute_Flux(QER(i,j),QEL(i + 1,j),FR4(i,j),FL4(i + 1,j),alphaxMax(i,j),alphaxMin(i,j));
        H15(i,j) = Compute_Flux(QB1R(i,j),QB1L(i + 1,j),FR5(i,j),FL5(i + 1,j),alphaxMax(i,j),alphaxMin(i,j));
        H16(i,j) = Compute_Flux(QB2R(i,j),QB2L(i + 1,j),FR6(i,j),FL6(i + 1,j),alphaxMax(i,j),alphaxMin(i,j));
    end
end

for i = quad + 1:(Nx + 1)*quad
    for j = 1:Ny + 1
        H21(i,j) = Compute_Flux(QrhoU(i,j),QrhoD(i,j + 1),GU1(i,j),GD1(i,j + 1),alphayMax(i,j),alphayMin(i,j));
        H22(i,j) = Compute_Flux(QrhouU(i,j),QrhouD(i,j + 1),GU2(i,j),GD2(i,j + 1),alphayMax(i,j),alphayMin(i,j));
        H23(i,j) = Compute_Flux(QrhovU(i,j),QrhovD(i,j + 1),GU3(i,j),GD3(i,j + 1),alphayMax(i,j),alphayMin(i,j));
        H24(i,j) = Compute_Flux(QEU(i,j),QED(i,j + 1),GU4(i,j),GD4(i,j + 1),alphayMax(i,j),alphayMin(i,j));
        H25(i,j) = Compute_Flux(QB1U(i,j),QB1D(i,j + 1),GU5(i,j),GD5(i,j + 1),alphayMax(i,j),alphayMin(i,j));
        H26(i,j) = Compute_Flux(QB2U(i,j),QB2D(i,j + 1),GU6(i,j),GD6(i,j + 1),alphayMax(i,j),alphayMin(i,j));
    end
end

% 面积分 \int_(partial K) (h(uint,uext,n)·phi) dSx

% 右边
DQrhoR = GaussIntegralX(H11(2:end,:),VALUER1(1:Nx,:));
DQrhoxR = GaussIntegralX(H11(2:end,:),VALUER2(1:Nx,:));
DQrhoyR = GaussIntegralX(H11(2:end,:),VALUER3(1:Nx,:));
DQrhoxxR = GaussIntegralX(H11(2:end,:),VALUER4(1:Nx,:));
DQrhoxyR = GaussIntegralX(H11(2:end,:),VALUER5(1:Nx,:));
DQrhoyyR = GaussIntegralX(H11(2:end,:),VALUER6(1:Nx,:));

DQrhouR = GaussIntegralX(H12(2:end,:),VALUER1(1:Nx,:));
DQrhouxR = GaussIntegralX(H12(2:end,:),VALUER2(1:Nx,:));
DQrhouyR = GaussIntegralX(H12(2:end,:),VALUER3(1:Nx,:));
DQrhouxxR = GaussIntegralX(H12(2:end,:),VALUER4(1:Nx,:));
DQrhouxyR = GaussIntegralX(H12(2:end,:),VALUER5(1:Nx,:));
DQrhouyyR = GaussIntegralX(H12(2:end,:),VALUER6(1:Nx,:));

DQrhovR = GaussIntegralX(H13(2:end,:),VALUER1(1:Nx,:));
DQrhovxR = GaussIntegralX(H13(2:end,:),VALUER2(1:Nx,:));
DQrhovyR = GaussIntegralX(H13(2:end,:),VALUER3(1:Nx,:));
DQrhovxxR = GaussIntegralX(H13(2:end,:),VALUER4(1:Nx,:));
DQrhovxyR = GaussIntegralX(H13(2:end,:),VALUER5(1:Nx,:));
DQrhovyyR = GaussIntegralX(H13(2:end,:),VALUER6(1:Nx,:));

DQER = GaussIntegralX(H14(2:end,:),VALUER1(1:Nx,:));
DQExR = GaussIntegralX(H14(2:end,:),VALUER2(1:Nx,:));
DQEyR = GaussIntegralX(H14(2:end,:),VALUER3(1:Nx,:));
DQExxR = GaussIntegralX(H14(2:end,:),VALUER4(1:Nx,:));
DQExyR = GaussIntegralX(H14(2:end,:),VALUER5(1:Nx,:));
DQEyyR = GaussIntegralX(H14(2:end,:),VALUER6(1:Nx,:));

DQB1R = GaussIntegralX(H15(2:end,:),VALUER1(1:Nx,:));
DQB1xR = GaussIntegralX(H15(2:end,:),VALUER2(1:Nx,:));
DQB1yR = GaussIntegralX(H15(2:end,:),VALUER3(1:Nx,:));
DQB1xxR = GaussIntegralX(H15(2:end,:),VALUER4(1:Nx,:));
DQB1xyR = GaussIntegralX(H15(2:end,:),VALUER5(1:Nx,:));
DQB1yyR = GaussIntegralX(H15(2:end,:),VALUER6(1:Nx,:));

DQB2R = GaussIntegralX(H16(2:end,:),VALUER1(1:Nx,:));
DQB2xR = GaussIntegralX(H16(2:end,:),VALUER2(1:Nx,:));
DQB2yR = GaussIntegralX(H16(2:end,:),VALUER3(1:Nx,:));
DQB2xxR = GaussIntegralX(H16(2:end,:),VALUER4(1:Nx,:));
DQB2xyR = GaussIntegralX(H16(2:end,:),VALUER5(1:Nx,:));
DQB2yyR = GaussIntegralX(H16(2:end,:),VALUER6(1:Nx,:));

% 左边
DQrhoL = GaussIntegralX(-H11(1:end - 1,:),VALUEL1(1:Nx,:));
DQrhoxL = GaussIntegralX(-H11(1:end - 1,:),VALUEL2(1:Nx,:));
DQrhoyL = GaussIntegralX(-H11(1:end - 1,:),VALUEL3(1:Nx,:));
DQrhoxxL = GaussIntegralX(-H11(1:end - 1,:),VALUEL4(1:Nx,:));
DQrhoxyL = GaussIntegralX(-H11(1:end - 1,:),VALUEL5(1:Nx,:));
DQrhoyyL = GaussIntegralX(-H11(1:end - 1,:),VALUEL6(1:Nx,:));

DQrhouL = GaussIntegralX(-H12(1:end - 1,:),VALUEL1(1:Nx,:));
DQrhouxL = GaussIntegralX(-H12(1:end - 1,:),VALUEL2(1:Nx,:));
DQrhouyL = GaussIntegralX(-H12(1:end - 1,:),VALUEL3(1:Nx,:));
DQrhouxxL = GaussIntegralX(-H12(1:end - 1,:),VALUEL4(1:Nx,:));
DQrhouxyL = GaussIntegralX(-H12(1:end - 1,:),VALUEL5(1:Nx,:));
DQrhouyyL = GaussIntegralX(-H12(1:end - 1,:),VALUEL6(1:Nx,:));

DQrhovL = GaussIntegralX(-H13(1:end - 1,:),VALUEL1(1:Nx,:));
DQrhovxL = GaussIntegralX(-H13(1:end - 1,:),VALUEL2(1:Nx,:));
DQrhovyL = GaussIntegralX(-H13(1:end - 1,:),VALUEL3(1:Nx,:));
DQrhovxxL = GaussIntegralX(-H13(1:end - 1,:),VALUEL4(1:Nx,:));
DQrhovxyL = GaussIntegralX(-H13(1:end - 1,:),VALUEL5(1:Nx,:));
DQrhovyyL = GaussIntegralX(-H13(1:end - 1,:),VALUEL6(1:Nx,:));

DQEL = GaussIntegralX(-H14(1:end - 1,:),VALUEL1(1:Nx,:));
DQExL = GaussIntegralX(-H14(1:end - 1,:),VALUEL2(1:Nx,:));
DQEyL = GaussIntegralX(-H14(1:end - 1,:),VALUEL3(1:Nx,:));
DQExxL = GaussIntegralX(-H14(1:end - 1,:),VALUEL4(1:Nx,:));
DQExyL = GaussIntegralX(-H14(1:end - 1,:),VALUEL5(1:Nx,:));
DQEyyL = GaussIntegralX(-H14(1:end - 1,:),VALUEL6(1:Nx,:));

DQB1L = GaussIntegralX(-H15(1:end - 1,:),VALUEL1(1:Nx,:));
DQB1xL = GaussIntegralX(-H15(1:end - 1,:),VALUEL2(1:Nx,:));
DQB1yL = GaussIntegralX(-H15(1:end - 1,:),VALUEL3(1:Nx,:));
DQB1xxL = GaussIntegralX(-H15(1:end - 1,:),VALUEL4(1:Nx,:));
DQB1xyL = GaussIntegralX(-H15(1:end - 1,:),VALUEL5(1:Nx,:));
DQB1yyL = GaussIntegralX(-H15(1:end - 1,:),VALUEL6(1:Nx,:));

DQB2L = GaussIntegralX(-H16(1:end - 1,:),VALUEL1(1:Nx,:));
DQB2xL = GaussIntegralX(-H16(1:end - 1,:),VALUEL2(1:Nx,:));
DQB2yL = GaussIntegralX(-H16(1:end - 1,:),VALUEL3(1:Nx,:));
DQB2xxL = GaussIntegralX(-H16(1:end - 1,:),VALUEL4(1:Nx,:));
DQB2xyL = GaussIntegralX(-H16(1:end - 1,:),VALUEL5(1:Nx,:));
DQB2yyL = GaussIntegralX(-H16(1:end - 1,:),VALUEL6(1:Nx,:));

% 上边
DQrhoU = GaussIntegralY(H21(:,2:end),VALUEU1(:,1:Ny));
DQrhoxU = GaussIntegralY(H21(:,2:end),VALUEU2(:,1:Ny));
DQrhoyU = GaussIntegralY(H21(:,2:end),VALUEU3(:,1:Ny));
DQrhoxxU = GaussIntegralY(H21(:,2:end),VALUEU4(:,1:Ny));
DQrhoxyU = GaussIntegralY(H21(:,2:end),VALUEU5(:,1:Ny));
DQrhoyyU = GaussIntegralY(H21(:,2:end),VALUEU6(:,1:Ny));

DQrhouU = GaussIntegralY(H22(:,2:end),VALUEU1(:,1:Ny));
DQrhouxU = GaussIntegralY(H22(:,2:end),VALUEU2(:,1:Ny));
DQrhouyU = GaussIntegralY(H22(:,2:end),VALUEU3(:,1:Ny));
DQrhouxxU = GaussIntegralY(H22(:,2:end),VALUEU4(:,1:Ny));
DQrhouxyU = GaussIntegralY(H22(:,2:end),VALUEU5(:,1:Ny));
DQrhouyyU = GaussIntegralY(H22(:,2:end),VALUEU6(:,1:Ny));

DQrhovU = GaussIntegralY(H23(:,2:end),VALUEU1(:,1:Ny));
DQrhovxU = GaussIntegralY(H23(:,2:end),VALUEU2(:,1:Ny));
DQrhovyU = GaussIntegralY(H23(:,2:end),VALUEU3(:,1:Ny));
DQrhovxxU = GaussIntegralY(H23(:,2:end),VALUEU4(:,1:Ny));
DQrhovxyU = GaussIntegralY(H23(:,2:end),VALUEU5(:,1:Ny));
DQrhovyyU = GaussIntegralY(H23(:,2:end),VALUEU6(:,1:Ny));

DQEU = GaussIntegralY(H24(:,2:end),VALUEU1(:,1:Ny));
DQExU = GaussIntegralY(H24(:,2:end),VALUEU2(:,1:Ny));
DQEyU = GaussIntegralY(H24(:,2:end),VALUEU3(:,1:Ny));
DQExxU = GaussIntegralY(H24(:,2:end),VALUEU4(:,1:Ny));
DQExyU = GaussIntegralY(H24(:,2:end),VALUEU5(:,1:Ny));
DQEyyU = GaussIntegralY(H24(:,2:end),VALUEU6(:,1:Ny));

DQB1U = GaussIntegralY(H25(:,2:end),VALUEU1(:,1:Ny));
DQB1xU = GaussIntegralY(H25(:,2:end),VALUEU2(:,1:Ny));
DQB1yU = GaussIntegralY(H25(:,2:end),VALUEU3(:,1:Ny));
DQB1xxU = GaussIntegralY(H25(:,2:end),VALUEU4(:,1:Ny));
DQB1xyU = GaussIntegralY(H25(:,2:end),VALUEU5(:,1:Ny));
DQB1yyU = GaussIntegralY(H25(:,2:end),VALUEU6(:,1:Ny));

DQB2U = GaussIntegralY(H26(:,2:end),VALUEU1(:,1:Ny));
DQB2xU = GaussIntegralY(H26(:,2:end),VALUEU2(:,1:Ny));
DQB2yU = GaussIntegralY(H26(:,2:end),VALUEU3(:,1:Ny));
DQB2xxU = GaussIntegralY(H26(:,2:end),VALUEU4(:,1:Ny));
DQB2xyU = GaussIntegralY(H26(:,2:end),VALUEU5(:,1:Ny));
DQB2yyU = GaussIntegralY(H26(:,2:end),VALUEU6(:,1:Ny));

% 下边
DQrhoD = GaussIntegralY(-H21(:,1:end - 1),VALUED1(:,1:Ny));
DQrhoxD = GaussIntegralY(-H21(:,1:end - 1),VALUED2(:,1:Ny));
DQrhoyD = GaussIntegralY(-H21(:,1:end - 1),VALUED3(:,1:Ny));
DQrhoxxD = GaussIntegralY(-H21(:,1:end - 1),VALUED4(:,1:Ny));
DQrhoxyD = GaussIntegralY(-H21(:,1:end - 1),VALUED5(:,1:Ny));
DQrhoyyD = GaussIntegralY(-H21(:,1:end - 1),VALUED6(:,1:Ny));

DQrhouD = GaussIntegralY(-H22(:,1:end - 1),VALUED1(:,1:Ny));
DQrhouxD = GaussIntegralY(-H22(:,1:end - 1),VALUED2(:,1:Ny));
DQrhouyD = GaussIntegralY(-H22(:,1:end - 1),VALUED3(:,1:Ny));
DQrhouxxD = GaussIntegralY(-H22(:,1:end - 1),VALUED4(:,1:Ny));
DQrhouxyD = GaussIntegralY(-H22(:,1:end - 1),VALUED5(:,1:Ny));
DQrhouyyD = GaussIntegralY(-H22(:,1:end - 1),VALUED6(:,1:Ny));

DQrhovD = GaussIntegralY(-H23(:,1:end - 1),VALUED1(:,1:Ny));
DQrhovxD = GaussIntegralY(-H23(:,1:end - 1),VALUED2(:,1:Ny));
DQrhovyD = GaussIntegralY(-H23(:,1:end - 1),VALUED3(:,1:Ny));
DQrhovxxD = GaussIntegralY(-H23(:,1:end - 1),VALUED4(:,1:Ny));
DQrhovxyD = GaussIntegralY(-H23(:,1:end - 1),VALUED5(:,1:Ny));
DQrhovyyD = GaussIntegralY(-H23(:,1:end - 1),VALUED6(:,1:Ny));

DQED = GaussIntegralY(-H24(:,1:end - 1),VALUED1(:,1:Ny));
DQExD = GaussIntegralY(-H24(:,1:end - 1),VALUED2(:,1:Ny));
DQEyD = GaussIntegralY(-H24(:,1:end - 1),VALUED3(:,1:Ny));
DQExxD = GaussIntegralY(-H24(:,1:end - 1),VALUED4(:,1:Ny));
DQExyD = GaussIntegralY(-H24(:,1:end - 1),VALUED5(:,1:Ny));
DQEyyD = GaussIntegralY(-H24(:,1:end - 1),VALUED6(:,1:Ny));

DQB1D = GaussIntegralY(-H25(:,1:end - 1),VALUED1(:,1:Ny));
DQB1xD = GaussIntegralY(-H25(:,1:end - 1),VALUED2(:,1:Ny));
DQB1yD = GaussIntegralY(-H25(:,1:end - 1),VALUED3(:,1:Ny));
DQB1xxD = GaussIntegralY(-H25(:,1:end - 1),VALUED4(:,1:Ny));
DQB1xyD = GaussIntegralY(-H25(:,1:end - 1),VALUED5(:,1:Ny));
DQB1yyD = GaussIntegralY(-H25(:,1:end - 1),VALUED6(:,1:Ny));

DQB2D = GaussIntegralY(-H26(:,1:end - 1),VALUED1(:,1:Ny));
DQB2xD = GaussIntegralY(-H26(:,1:end - 1),VALUED2(:,1:Ny));
DQB2yD = GaussIntegralY(-H26(:,1:end - 1),VALUED3(:,1:Ny));
DQB2xxD = GaussIntegralY(-H26(:,1:end - 1),VALUED4(:,1:Ny));
DQB2xyD = GaussIntegralY(-H26(:,1:end - 1),VALUED5(:,1:Ny));
DQB2yyD = GaussIntegralY(-H26(:,1:end - 1),VALUED6(:,1:Ny));

% 整合
DUrho = ( - DQrhoR(:,2:end - 1) - DQrhoL(:,2:end - 1) - DQrhoU(2:end - 1,:) - DQrhoD(2:end - 1,:))/m1;
DUrhox = (DQrhoxINT(2:end - 1,2:end - 1) - DQrhoxR(:,2:end - 1) - DQrhoxL(:,2:end - 1) - DQrhoxU(2:end - 1,:) - DQrhoxD(2:end - 1,:))/m2;
DUrhoy = (DQrhoyINT(2:end - 1,2:end - 1) - DQrhoyR(:,2:end - 1) - DQrhoyL(:,2:end - 1) - DQrhoyU(2:end - 1,:) - DQrhoyD(2:end - 1,:))/m3;
DUrhoxx = (DQrhoxxINT(2:end - 1,2:end - 1) - DQrhoxxR(:,2:end - 1) - DQrhoxxL(:,2:end - 1) - DQrhoxxU(2:end - 1,:) - DQrhoxxD(2:end - 1,:))/m4;
DUrhoxy = (DQrhoxyINT(2:end - 1,2:end - 1) - DQrhoxyR(:,2:end - 1) - DQrhoxyL(:,2:end - 1) - DQrhoxyU(2:end - 1,:) - DQrhoxyD(2:end - 1,:))/m5;
DUrhoyy = (DQrhoyyINT(2:end - 1,2:end - 1) - DQrhoyyR(:,2:end - 1) - DQrhoyyL(:,2:end - 1) - DQrhoyyU(2:end - 1,:) - DQrhoyyD(2:end - 1,:))/m6;

DUrhou = ( - DQrhouR(:,2:end - 1) - DQrhouL(:,2:end - 1) - DQrhouU(2:end - 1,:) - DQrhouD(2:end - 1,:))/m1;
DUrhoux = (DQrhouxINT(2:end - 1,2:end - 1) - DQrhouxR(:,2:end - 1) - DQrhouxL(:,2:end - 1) - DQrhouxU(2:end - 1,:) - DQrhouxD(2:end - 1,:))/m2;
DUrhouy = (DQrhouyINT(2:end - 1,2:end - 1) - DQrhouyR(:,2:end - 1) - DQrhouyL(:,2:end - 1) - DQrhouyU(2:end - 1,:) - DQrhouyD(2:end - 1,:))/m3;
DUrhouxx = (DQrhouxxINT(2:end - 1,2:end - 1) - DQrhouxxR(:,2:end - 1) - DQrhouxxL(:,2:end - 1) - DQrhouxxU(2:end - 1,:) - DQrhouxxD(2:end - 1,:))/m4;
DUrhouxy = (DQrhouxyINT(2:end - 1,2:end - 1) - DQrhouxyR(:,2:end - 1) - DQrhouxyL(:,2:end - 1) - DQrhouxyU(2:end - 1,:) - DQrhouxyD(2:end - 1,:))/m5;
DUrhouyy = (DQrhouyyINT(2:end - 1,2:end - 1) - DQrhouyyR(:,2:end - 1) - DQrhouyyL(:,2:end - 1) - DQrhouyyU(2:end - 1,:) - DQrhouyyD(2:end - 1,:))/m6;

DUrhov = ( - DQrhovR(:,2:end - 1) - DQrhovL(:,2:end - 1) - DQrhovU(2:end - 1,:) - DQrhovD(2:end - 1,:))/m1;
DUrhovx = (DQrhovxINT(2:end - 1,2:end - 1) - DQrhovxR(:,2:end - 1) - DQrhovxL(:,2:end - 1) - DQrhovxU(2:end - 1,:) - DQrhovxD(2:end - 1,:))/m2;
DUrhovy = (DQrhovyINT(2:end - 1,2:end - 1) - DQrhovyR(:,2:end - 1) - DQrhovyL(:,2:end - 1) - DQrhovyU(2:end - 1,:) - DQrhovyD(2:end - 1,:))/m3;
DUrhovxx = (DQrhovxxINT(2:end - 1,2:end - 1) - DQrhovxxR(:,2:end - 1) - DQrhovxxL(:,2:end - 1) - DQrhovxxU(2:end - 1,:) - DQrhovxxD(2:end - 1,:))/m4;
DUrhovxy = (DQrhovxyINT(2:end - 1,2:end - 1) - DQrhovxyR(:,2:end - 1) - DQrhovxyL(:,2:end - 1) - DQrhovxyU(2:end - 1,:) - DQrhovxyD(2:end - 1,:))/m5;
DUrhovyy = (DQrhovyyINT(2:end - 1,2:end - 1) - DQrhovyyR(:,2:end - 1) - DQrhovyyL(:,2:end - 1) - DQrhovyyU(2:end - 1,:) - DQrhovyyD(2:end - 1,:))/m6;

DUE = ( - DQER(:,2:end - 1) - DQEL(:,2:end - 1) - DQEU(2:end - 1,:) - DQED(2:end - 1,:))/m1;
DUEx = (DQExINT(2:end - 1,2:end - 1) - DQExR(:,2:end - 1) - DQExL(:,2:end - 1) - DQExU(2:end - 1,:) - DQExD(2:end - 1,:))/m2;
DUEy = (DQEyINT(2:end - 1,2:end - 1) - DQEyR(:,2:end - 1) - DQEyL(:,2:end - 1) - DQEyU(2:end - 1,:) - DQEyD(2:end - 1,:))/m3;
DUExx = (DQExxINT(2:end - 1,2:end - 1) - DQExxR(:,2:end - 1) - DQExxL(:,2:end - 1) - DQExxU(2:end - 1,:) - DQExxD(2:end - 1,:))/m4;
DUExy = (DQExyINT(2:end - 1,2:end - 1) - DQExyR(:,2:end - 1) - DQExyL(:,2:end - 1) - DQExyU(2:end - 1,:) - DQExyD(2:end - 1,:))/m5;
DUEyy = (DQEyyINT(2:end - 1,2:end - 1) - DQEyyR(:,2:end - 1) - DQEyyL(:,2:end - 1) - DQEyyU(2:end - 1,:) - DQEyyD(2:end - 1,:))/m6;

DUB1 = ( - DQB1R(:,2:end - 1) - DQB1L(:,2:end - 1) - DQB1U(2:end - 1,:) - DQB1D(2:end - 1,:))/m1;
DUB1x = (DQB1xINT(2:end - 1,2:end - 1) - DQB1xR(:,2:end - 1) - DQB1xL(:,2:end - 1) - DQB1xU(2:end - 1,:) - DQB1xD(2:end - 1,:))/m2;
DUB1y = (DQB1yINT(2:end - 1,2:end - 1) - DQB1yR(:,2:end - 1) - DQB1yL(:,2:end - 1) - DQB1yU(2:end - 1,:) - DQB1yD(2:end - 1,:))/m3;
DUB1xx = (DQB1xxINT(2:end - 1,2:end - 1) - DQB1xxR(:,2:end - 1) - DQB1xxL(:,2:end - 1) - DQB1xxU(2:end - 1,:) - DQB1xxD(2:end - 1,:))/m4;
DUB1xy = (DQB1xyINT(2:end - 1,2:end - 1) - DQB1xyR(:,2:end - 1) - DQB1xyL(:,2:end - 1) - DQB1xyU(2:end - 1,:) - DQB1xyD(2:end - 1,:))/m5;
DUB1yy = (DQB1yyINT(2:end - 1,2:end - 1) - DQB1yyR(:,2:end - 1) - DQB1yyL(:,2:end - 1) - DQB1yyU(2:end - 1,:) - DQB1yyD(2:end - 1,:))/m6;

DUB2 = ( - DQB2R(:,2:end - 1) - DQB2L(:,2:end - 1) - DQB2U(2:end - 1,:) - DQB2D(2:end - 1,:))/m1;
DUB2x = (DQB2xINT(2:end - 1,2:end - 1) - DQB2xR(:,2:end - 1) - DQB2xL(:,2:end - 1) - DQB2xU(2:end - 1,:) - DQB2xD(2:end - 1,:))/m2;
DUB2y = (DQB2yINT(2:end - 1,2:end - 1) - DQB2yR(:,2:end - 1) - DQB2yL(:,2:end - 1) - DQB2yU(2:end - 1,:) - DQB2yD(2:end - 1,:))/m3;
DUB2xx = (DQB2xxINT(2:end - 1,2:end - 1) - DQB2xxR(:,2:end - 1) - DQB2xxL(:,2:end - 1) - DQB2xxU(2:end - 1,:) - DQB2xxD(2:end - 1,:))/m4;
DUB2xy = (DQB2xyINT(2:end - 1,2:end - 1) - DQB2xyR(:,2:end - 1) - DQB2xyL(:,2:end - 1) - DQB2xyU(2:end - 1,:) - DQB2xyD(2:end - 1,:))/m5;
DUB2yy = (DQB2yyINT(2:end - 1,2:end - 1) - DQB2yyR(:,2:end - 1) - DQB2yyL(:,2:end - 1) - DQB2yyU(2:end - 1,:) - DQB2yyD(2:end - 1,:))/m6;