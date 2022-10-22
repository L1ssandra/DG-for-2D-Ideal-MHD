% update1.m
UrhoI = zeros(Nx + 2,Ny + 2);
UrhoxI = zeros(Nx + 2,Ny + 2);
UrhoyI = zeros(Nx + 2,Ny + 2);
UrhoxxI = zeros(Nx + 2,Ny + 2);
UrhoxyI = zeros(Nx + 2,Ny + 2);
UrhoyyI = zeros(Nx + 2,Ny + 2);

UrhouI = zeros(Nx + 2,Ny + 2);
UrhouxI = zeros(Nx + 2,Ny + 2);
UrhouyI = zeros(Nx + 2,Ny + 2);
UrhouxxI = zeros(Nx + 2,Ny + 2);
UrhouxyI = zeros(Nx + 2,Ny + 2);
UrhouyyI = zeros(Nx + 2,Ny + 2);

UrhovI = zeros(Nx + 2,Ny + 2);
UrhovxI = zeros(Nx + 2,Ny + 2);
UrhovyI = zeros(Nx + 2,Ny + 2);
UrhovxxI = zeros(Nx + 2,Ny + 2);
UrhovxyI = zeros(Nx + 2,Ny + 2);
UrhovyyI = zeros(Nx + 2,Ny + 2);

UEI = zeros(Nx + 2,Ny + 2);
UExI = zeros(Nx + 2,Ny + 2);
UEyI = zeros(Nx + 2,Ny + 2);
UExxI = zeros(Nx + 2,Ny + 2);
UExyI = zeros(Nx + 2,Ny + 2);
UEyyI = zeros(Nx + 2,Ny + 2);

UB1I = zeros(Nx + 2,Ny + 2);
UB1xI = zeros(Nx + 2,Ny + 2);
UB1yI = zeros(Nx + 2,Ny + 2);
UB1xxI = zeros(Nx + 2,Ny + 2);
UB1xyI = zeros(Nx + 2,Ny + 2);
UB1yyI = zeros(Nx + 2,Ny + 2);

UB2I = zeros(Nx + 2,Ny + 2);
UB2xI = zeros(Nx + 2,Ny + 2);
UB2yI = zeros(Nx + 2,Ny + 2);
UB2xxI = zeros(Nx + 2,Ny + 2);
UB2xyI = zeros(Nx + 2,Ny + 2);
UB2yyI = zeros(Nx + 2,Ny + 2);

UrhoI(2:end - 1,2:end - 1) = Urho(2:end - 1,2:end - 1) + dt*DUrho;
UrhoxI(2:end - 1,2:end - 1) = Urhox(2:end - 1,2:end - 1) + dt*DUrhox;
UrhoyI(2:end - 1,2:end - 1) = Urhoy(2:end - 1,2:end - 1) + dt*DUrhoy;
UrhoxxI(2:end - 1,2:end - 1) = Urhoxx(2:end - 1,2:end - 1) + dt*DUrhoxx;
UrhoxyI(2:end - 1,2:end - 1) = Urhoxy(2:end - 1,2:end - 1) + dt*DUrhoxy;
UrhoyyI(2:end - 1,2:end - 1) = Urhoyy(2:end - 1,2:end - 1) + dt*DUrhoyy;

UrhouI(2:end - 1,2:end - 1) = Urhou(2:end - 1,2:end - 1) + dt*DUrhou;
UrhouxI(2:end - 1,2:end - 1) = Urhoux(2:end - 1,2:end - 1) + dt*DUrhoux;
UrhouyI(2:end - 1,2:end - 1) = Urhouy(2:end - 1,2:end - 1) + dt*DUrhouy;
UrhouxxI(2:end - 1,2:end - 1) = Urhouxx(2:end - 1,2:end - 1) + dt*DUrhouxx;
UrhouxyI(2:end - 1,2:end - 1) = Urhouxy(2:end - 1,2:end - 1) + dt*DUrhouxy;
UrhouyyI(2:end - 1,2:end - 1) = Urhouyy(2:end - 1,2:end - 1) + dt*DUrhouyy;

UrhovI(2:end - 1,2:end - 1) = Urhov(2:end - 1,2:end - 1) + dt*DUrhov;
UrhovxI(2:end - 1,2:end - 1) = Urhovx(2:end - 1,2:end - 1) + dt*DUrhovx;
UrhovyI(2:end - 1,2:end - 1) = Urhovy(2:end - 1,2:end - 1) + dt*DUrhovy;
UrhovxxI(2:end - 1,2:end - 1) = Urhovxx(2:end - 1,2:end - 1) + dt*DUrhovxx;
UrhovxyI(2:end - 1,2:end - 1) = Urhovxy(2:end - 1,2:end - 1) + dt*DUrhovxy;
UrhovyyI(2:end - 1,2:end - 1) = Urhovyy(2:end - 1,2:end - 1) + dt*DUrhovyy;

UEI(2:end - 1,2:end - 1) = UE(2:end - 1,2:end - 1) + dt*DUE;
UExI(2:end - 1,2:end - 1) = UEx(2:end - 1,2:end - 1) + dt*DUEx;
UEyI(2:end - 1,2:end - 1) = UEy(2:end - 1,2:end - 1) + dt*DUEy;
UExxI(2:end - 1,2:end - 1) = UExx(2:end - 1,2:end - 1) + dt*DUExx;
UExyI(2:end - 1,2:end - 1) = UExy(2:end - 1,2:end - 1) + dt*DUExy;
UEyyI(2:end - 1,2:end - 1) = UEyy(2:end - 1,2:end - 1) + dt*DUEyy;

UB1I(2:end - 1,2:end - 1) = UB1(2:end - 1,2:end - 1) + dt*DUB1;
UB1xI(2:end - 1,2:end - 1) = UB1x(2:end - 1,2:end - 1) + dt*DUB1x;
UB1yI(2:end - 1,2:end - 1) = UB1y(2:end - 1,2:end - 1) + dt*DUB1y;
UB1xxI(2:end - 1,2:end - 1) = UB1xx(2:end - 1,2:end - 1) + dt*DUB1xx;
UB1xyI(2:end - 1,2:end - 1) = UB1xy(2:end - 1,2:end - 1) + dt*DUB1xy;
UB1yyI(2:end - 1,2:end - 1) = UB1yy(2:end - 1,2:end - 1) + dt*DUB1yy;

UB2I(2:end - 1,2:end - 1) = UB2(2:end - 1,2:end - 1) + dt*DUB2;
UB2xI(2:end - 1,2:end - 1) = UB2x(2:end - 1,2:end - 1) + dt*DUB2x;
UB2yI(2:end - 1,2:end - 1) = UB2y(2:end - 1,2:end - 1) + dt*DUB2y;
UB2xxI(2:end - 1,2:end - 1) = UB2xx(2:end - 1,2:end - 1) + dt*DUB2xx;
UB2xyI(2:end - 1,2:end - 1) = UB2xy(2:end - 1,2:end - 1) + dt*DUB2xy;
UB2yyI(2:end - 1,2:end - 1) = UB2yy(2:end - 1,2:end - 1) + dt*DUB2yy;

% ±¸·Ý
UrhoCopy = Urho;
UrhoxCopy = Urhox;
UrhoyCopy = Urhoy;
UrhoxxCopy = Urhoxx;
UrhoxyCopy = Urhoxy;
UrhoyyCopy = Urhoyy;

UrhouCopy = Urhou;
UrhouxCopy = Urhoux;
UrhouyCopy = Urhouy;
UrhouxxCopy = Urhouxx;
UrhouxyCopy = Urhouxy;
UrhouyyCopy = Urhouyy;

UrhovCopy = Urhov;
UrhovxCopy = Urhovx;
UrhovyCopy = Urhovy;
UrhovxxCopy = Urhovxx;
UrhovxyCopy = Urhovxy;
UrhovyyCopy = Urhovyy;

UECopy = UE;
UExCopy = UEx;
UEyCopy = UEy;
UExxCopy = UExx;
UExyCopy = UExy;
UEyyCopy = UEyy;

UB1Copy = UB1;
UB1xCopy = UB1x;
UB1yCopy = UB1y;
UB1xxCopy = UB1xx;
UB1xyCopy = UB1xy;
UB1yyCopy = UB1yy;

UB2Copy = UB2;
UB2xCopy = UB2x;
UB2yCopy = UB2y;
UB2xxCopy = UB2xx;
UB2xyCopy = UB2xy;
UB2yyCopy = UB2yy;

Urho = UrhoI;
Urhox = UrhoxI;
Urhoy = UrhoyI;
Urhoxx = UrhoxxI;
Urhoxy = UrhoxyI;
Urhoyy = UrhoyyI;

Urhou = UrhouI;
Urhoux = UrhouxI;
Urhouy = UrhouyI;
Urhouxx = UrhouxxI;
Urhouxy = UrhouxyI;
Urhouyy = UrhouyyI;

Urhov = UrhovI;
Urhovx = UrhovxI;
Urhovy = UrhovyI;
Urhovxx = UrhovxxI;
Urhovxy = UrhovxyI;
Urhovyy = UrhovyyI;

UE = UEI;
UEx = UExI;
UEy = UEyI;
UExx = UExxI;
UExy = UExyI;
UEyy = UEyyI;

UB1 = UB1I;
UB1x = UB1xI;
UB1y = UB1yI;
UB1xx = UB1xxI;
UB1xy = UB1xyI;
UB1yy = UB1yyI;

UB2 = UB2I;
UB2x = UB2xI;
UB2y = UB2yI;
UB2xx = UB2xxI;
UB2xy = UB2xyI;
UB2yy = UB2yyI;