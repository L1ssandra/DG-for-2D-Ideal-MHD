% update2.m
Urho = UrhoCopy;
Urhox = UrhoxCopy;
Urhoy = UrhoyCopy;
Urhoxx = UrhoxxCopy;
Urhoxy = UrhoxyCopy;
Urhoyy = UrhoyyCopy;

Urhou = UrhouCopy;
Urhoux = UrhouxCopy;
Urhouy = UrhouyCopy;
Urhouxx = UrhouxxCopy;
Urhouxy = UrhouxyCopy;
Urhouyy = UrhouyyCopy;

Urhov = UrhovCopy;
Urhovx = UrhovxCopy;
Urhovy = UrhovyCopy;
Urhovxx = UrhovxxCopy;
Urhovxy = UrhovxyCopy;
Urhovyy = UrhovyyCopy;

UE = UECopy;
UEx = UExCopy;
UEy = UEyCopy;
UExx = UExxCopy;
UExy = UExyCopy;
UEyy = UEyyCopy;

UB1 = UB1Copy;
UB1x = UB1xCopy;
UB1y = UB1yCopy;
UB1xx = UB1xxCopy;
UB1xy = UB1xyCopy;
UB1yy = UB1yyCopy;

UB2 = UB2Copy;
UB2x = UB2xCopy;
UB2y = UB2yCopy;
UB2xx = UB2xxCopy;
UB2xy = UB2yyCopy;
UB2yy = UB2yyCopy;

UrhoII = zeros(Nx + 2,Ny + 2);
UrhoxII = zeros(Nx + 2,Ny + 2);
UrhoyII = zeros(Nx + 2,Ny + 2);
UrhoxxII = zeros(Nx + 2,Ny + 2);
UrhoxyII = zeros(Nx + 2,Ny + 2);
UrhoyyII = zeros(Nx + 2,Ny + 2);

UrhouII = zeros(Nx + 2,Ny + 2);
UrhouxII = zeros(Nx + 2,Ny + 2);
UrhouyII = zeros(Nx + 2,Ny + 2);
UrhouxxII = zeros(Nx + 2,Ny + 2);
UrhouxyII = zeros(Nx + 2,Ny + 2);
UrhouyyII = zeros(Nx + 2,Ny + 2);

UrhovII = zeros(Nx + 2,Ny + 2);
UrhovxII = zeros(Nx + 2,Ny + 2);
UrhovyII = zeros(Nx + 2,Ny + 2);
UrhovxxII = zeros(Nx + 2,Ny + 2);
UrhovxyII = zeros(Nx + 2,Ny + 2);
UrhovyyII = zeros(Nx + 2,Ny + 2);

UEII = zeros(Nx + 2,Ny + 2);
UExII = zeros(Nx + 2,Ny + 2);
UEyII = zeros(Nx + 2,Ny + 2);
UExxII = zeros(Nx + 2,Ny + 2);
UExyII = zeros(Nx + 2,Ny + 2);
UEyyII = zeros(Nx + 2,Ny + 2);

UB1II = zeros(Nx + 2,Ny + 2);
UB1xII = zeros(Nx + 2,Ny + 2);
UB1yII = zeros(Nx + 2,Ny + 2);
UB1xxII = zeros(Nx + 2,Ny + 2);
UB1xyII = zeros(Nx + 2,Ny + 2);
UB1yyII = zeros(Nx + 2,Ny + 2);

UB2II = zeros(Nx + 2,Ny + 2);
UB2xII = zeros(Nx + 2,Ny + 2);
UB2yII = zeros(Nx + 2,Ny + 2);
UB2xxII = zeros(Nx + 2,Ny + 2);
UB2xyII = zeros(Nx + 2,Ny + 2);
UB2yyII = zeros(Nx + 2,Ny + 2);

UrhoII(2:end - 1,2:end - 1) = (3/4)*Urho(2:end - 1,2:end - 1) + (1/4)*UrhoI(2:end - 1,2:end - 1) + (1/4)*dt*DUrho;
UrhoxII(2:end - 1,2:end - 1) = (3/4)*Urhox(2:end - 1,2:end - 1) + (1/4)*UrhoxI(2:end - 1,2:end - 1) + (1/4)*dt*DUrhox;
UrhoyII(2:end - 1,2:end - 1) = (3/4)*Urhoy(2:end - 1,2:end - 1) + (1/4)*UrhoyI(2:end - 1,2:end - 1) + (1/4)*dt*DUrhoy;
UrhoxxII(2:end - 1,2:end - 1) = (3/4)*Urhoxx(2:end - 1,2:end - 1) + (1/4)*UrhoxxI(2:end - 1,2:end - 1) + (1/4)*dt*DUrhoxx;
UrhoxyII(2:end - 1,2:end - 1) = (3/4)*Urhoxy(2:end - 1,2:end - 1) + (1/4)*UrhoxyI(2:end - 1,2:end - 1) + (1/4)*dt*DUrhoxy;
UrhoyyII(2:end - 1,2:end - 1) = (3/4)*Urhoyy(2:end - 1,2:end - 1) + (1/4)*UrhoyyI(2:end - 1,2:end - 1) + (1/4)*dt*DUrhoyy;

UrhouII(2:end - 1,2:end - 1) = (3/4)*Urhou(2:end - 1,2:end - 1) + (1/4)*UrhouI(2:end - 1,2:end - 1) + (1/4)*dt*DUrhou;
UrhouxII(2:end - 1,2:end - 1) = (3/4)*Urhoux(2:end - 1,2:end - 1) + (1/4)*UrhouxI(2:end - 1,2:end - 1) + (1/4)*dt*DUrhoux;
UrhouyII(2:end - 1,2:end - 1) = (3/4)*Urhouy(2:end - 1,2:end - 1) + (1/4)*UrhouyI(2:end - 1,2:end - 1) + (1/4)*dt*DUrhouy;
UrhouxxII(2:end - 1,2:end - 1) = (3/4)*Urhouxx(2:end - 1,2:end - 1) + (1/4)*UrhouxxI(2:end - 1,2:end - 1) + (1/4)*dt*DUrhouxx;
UrhouxyII(2:end - 1,2:end - 1) = (3/4)*Urhouxy(2:end - 1,2:end - 1) + (1/4)*UrhouxyI(2:end - 1,2:end - 1) + (1/4)*dt*DUrhouxy;
UrhouyyII(2:end - 1,2:end - 1) = (3/4)*Urhouyy(2:end - 1,2:end - 1) + (1/4)*UrhouyyI(2:end - 1,2:end - 1) + (1/4)*dt*DUrhouyy;

UrhovII(2:end - 1,2:end - 1) = (3/4)*Urhov(2:end - 1,2:end - 1) + (1/4)*UrhovI(2:end - 1,2:end - 1) + (1/4)*dt*DUrhov;
UrhovxII(2:end - 1,2:end - 1) = (3/4)*Urhovx(2:end - 1,2:end - 1) + (1/4)*UrhovxI(2:end - 1,2:end - 1) + (1/4)*dt*DUrhovx;
UrhovyII(2:end - 1,2:end - 1) = (3/4)*Urhovy(2:end - 1,2:end - 1) + (1/4)*UrhovyI(2:end - 1,2:end - 1) + (1/4)*dt*DUrhovy;
UrhovxxII(2:end - 1,2:end - 1) = (3/4)*Urhovxx(2:end - 1,2:end - 1) + (1/4)*UrhovxxI(2:end - 1,2:end - 1) + (1/4)*dt*DUrhovxx;
UrhovxyII(2:end - 1,2:end - 1) = (3/4)*Urhovxy(2:end - 1,2:end - 1) + (1/4)*UrhovxyI(2:end - 1,2:end - 1) + (1/4)*dt*DUrhovxy;
UrhovyyII(2:end - 1,2:end - 1) = (3/4)*Urhovyy(2:end - 1,2:end - 1) + (1/4)*UrhovyyI(2:end - 1,2:end - 1) + (1/4)*dt*DUrhovyy;

UEII(2:end - 1,2:end - 1) = (3/4)*UE(2:end - 1,2:end - 1) + (1/4)*UEI(2:end - 1,2:end - 1) + (1/4)*dt*DUE;
UExII(2:end - 1,2:end - 1) = (3/4)*UEx(2:end - 1,2:end - 1) + (1/4)*UExI(2:end - 1,2:end - 1) + (1/4)*dt*DUEx;
UEyII(2:end - 1,2:end - 1) = (3/4)*UEy(2:end - 1,2:end - 1) + (1/4)*UEyI(2:end - 1,2:end - 1) + (1/4)*dt*DUEy;
UExxII(2:end - 1,2:end - 1) = (3/4)*UExx(2:end - 1,2:end - 1) + (1/4)*UExxI(2:end - 1,2:end - 1) + (1/4)*dt*DUExx;
UExyII(2:end - 1,2:end - 1) = (3/4)*UExy(2:end - 1,2:end - 1) + (1/4)*UExyI(2:end - 1,2:end - 1) + (1/4)*dt*DUExy;
UEyyII(2:end - 1,2:end - 1) = (3/4)*UEyy(2:end - 1,2:end - 1) + (1/4)*UEyyI(2:end - 1,2:end - 1) + (1/4)*dt*DUEyy;

UB1II(2:end - 1,2:end - 1) = (3/4)*UB1(2:end - 1,2:end - 1) + (1/4)*UB1I(2:end - 1,2:end - 1) + (1/4)*dt*DUB1;
UB1xII(2:end - 1,2:end - 1) = (3/4)*UB1x(2:end - 1,2:end - 1) + (1/4)*UB1xI(2:end - 1,2:end - 1) + (1/4)*dt*DUB1x;
UB1yII(2:end - 1,2:end - 1) = (3/4)*UB1y(2:end - 1,2:end - 1) + (1/4)*UB1yI(2:end - 1,2:end - 1) + (1/4)*dt*DUB1y;
UB1xxII(2:end - 1,2:end - 1) = (3/4)*UB1xx(2:end - 1,2:end - 1) + (1/4)*UB1xxI(2:end - 1,2:end - 1) + (1/4)*dt*DUB1xx;
UB1xyII(2:end - 1,2:end - 1) = (3/4)*UB1xy(2:end - 1,2:end - 1) + (1/4)*UB1xyI(2:end - 1,2:end - 1) + (1/4)*dt*DUB1xy;
UB1yyII(2:end - 1,2:end - 1) = (3/4)*UB1yy(2:end - 1,2:end - 1) + (1/4)*UB1yyI(2:end - 1,2:end - 1) + (1/4)*dt*DUB1yy;

UB2II(2:end - 1,2:end - 1) = (3/4)*UB2(2:end - 1,2:end - 1) + (1/4)*UB2I(2:end - 1,2:end - 1) + (1/4)*dt*DUB2;
UB2xII(2:end - 1,2:end - 1) = (3/4)*UB2x(2:end - 1,2:end - 1) + (1/4)*UB2xI(2:end - 1,2:end - 1) + (1/4)*dt*DUB2x;
UB2yII(2:end - 1,2:end - 1) = (3/4)*UB2y(2:end - 1,2:end - 1) + (1/4)*UB2yI(2:end - 1,2:end - 1) + (1/4)*dt*DUB2y;
UB2xxII(2:end - 1,2:end - 1) = (3/4)*UB2xx(2:end - 1,2:end - 1) + (1/4)*UB2xxI(2:end - 1,2:end - 1) + (1/4)*dt*DUB2xx;
UB2xyII(2:end - 1,2:end - 1) = (3/4)*UB2xy(2:end - 1,2:end - 1) + (1/4)*UB2xyI(2:end - 1,2:end - 1) + (1/4)*dt*DUB2xy;
UB2yyII(2:end - 1,2:end - 1) = (3/4)*UB2yy(2:end - 1,2:end - 1) + (1/4)*UB2yyI(2:end - 1,2:end - 1) + (1/4)*dt*DUB2yy;

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

Urho = UrhoII;
Urhox = UrhoxII;
Urhoy = UrhoyII;
Urhoxx = UrhoxxII;
Urhoxy = UrhoxyII;
Urhoyy = UrhoyyII;

Urhou = UrhouII;
Urhoux = UrhouxII;
Urhouy = UrhouyII;
Urhouxx = UrhouxxII;
Urhouxy = UrhouxyII;
Urhouyy = UrhouyyII;

Urhov = UrhovII;
Urhovx = UrhovxII;
Urhovy = UrhovyII;
Urhovxx = UrhovxxII;
Urhovxy = UrhovxyII;
Urhovyy = UrhovyyII;

UE = UEII;
UEx = UExII;
UEy = UEyII;
UExx = UExxII;
UExy = UExyII;
UEyy = UEyyII;

UB1 = UB1II;
UB1x = UB1xII;
UB1y = UB1yII;
UB1xx = UB1xxII;
UB1xy = UB1xyII;
UB1yy = UB1yyII;

UB2 = UB2II;
UB2x = UB2xII;
UB2y = UB2yII;
UB2xx = UB2xxII;
UB2xy = UB2xyII;
UB2yy = UB2yyII;