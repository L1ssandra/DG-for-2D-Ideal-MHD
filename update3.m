%update3.m
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

Urho(2:end - 1,2:end - 1) = (1/3)*Urho(2:end - 1,2:end - 1) + (2/3)*UrhoII(2:end - 1,2:end - 1) + (2/3)*dt*DUrho;
Urhox(2:end - 1,2:end - 1) = (1/3)*Urhox(2:end - 1,2:end - 1) + (2/3)*UrhoxII(2:end - 1,2:end - 1) + (2/3)*dt*DUrhox;
Urhoy(2:end - 1,2:end - 1) = (1/3)*Urhoy(2:end - 1,2:end - 1) + (2/3)*UrhoyII(2:end - 1,2:end - 1) + (2/3)*dt*DUrhoy;
Urhoxx(2:end - 1,2:end - 1) = (1/3)*Urhoxx(2:end - 1,2:end - 1) + (2/3)*UrhoxxII(2:end - 1,2:end - 1) + (2/3)*dt*DUrhoxx;
Urhoxy(2:end - 1,2:end - 1) = (1/3)*Urhoxy(2:end - 1,2:end - 1) + (2/3)*UrhoxyII(2:end - 1,2:end - 1) + (2/3)*dt*DUrhoxy;
Urhoyy(2:end - 1,2:end - 1) = (1/3)*Urhoyy(2:end - 1,2:end - 1) + (2/3)*UrhoyyII(2:end - 1,2:end - 1) + (2/3)*dt*DUrhoyy;

Urhou(2:end - 1,2:end - 1) = (1/3)*Urhou(2:end - 1,2:end - 1) + (2/3)*UrhouII(2:end - 1,2:end - 1) + (2/3)*dt*DUrhou;
Urhoux(2:end - 1,2:end - 1) = (1/3)*Urhoux(2:end - 1,2:end - 1) + (2/3)*UrhouxII(2:end - 1,2:end - 1) + (2/3)*dt*DUrhoux;
Urhouy(2:end - 1,2:end - 1) = (1/3)*Urhouy(2:end - 1,2:end - 1) + (2/3)*UrhouyII(2:end - 1,2:end - 1) + (2/3)*dt*DUrhouy;
Urhouxx(2:end - 1,2:end - 1) = (1/3)*Urhouxx(2:end - 1,2:end - 1) + (2/3)*UrhouxxII(2:end - 1,2:end - 1) + (2/3)*dt*DUrhouxx;
Urhouxy(2:end - 1,2:end - 1) = (1/3)*Urhouxy(2:end - 1,2:end - 1) + (2/3)*UrhouxyII(2:end - 1,2:end - 1) + (2/3)*dt*DUrhouxy;
Urhouyy(2:end - 1,2:end - 1) = (1/3)*Urhouyy(2:end - 1,2:end - 1) + (2/3)*UrhouyyII(2:end - 1,2:end - 1) + (2/3)*dt*DUrhouyy;

Urhov(2:end - 1,2:end - 1) = (1/3)*Urhov(2:end - 1,2:end - 1) + (2/3)*UrhovII(2:end - 1,2:end - 1) + (2/3)*dt*DUrhov;
Urhovx(2:end - 1,2:end - 1) = (1/3)*Urhovx(2:end - 1,2:end - 1) + (2/3)*UrhovxII(2:end - 1,2:end - 1) + (2/3)*dt*DUrhovx;
Urhovy(2:end - 1,2:end - 1) = (1/3)*Urhovy(2:end - 1,2:end - 1) + (2/3)*UrhovyII(2:end - 1,2:end - 1) + (2/3)*dt*DUrhovy;
Urhovxx(2:end - 1,2:end - 1) = (1/3)*Urhovxx(2:end - 1,2:end - 1) + (2/3)*UrhovxxII(2:end - 1,2:end - 1) + (2/3)*dt*DUrhovxx;
Urhovxy(2:end - 1,2:end - 1) = (1/3)*Urhovxy(2:end - 1,2:end - 1) + (2/3)*UrhovxyII(2:end - 1,2:end - 1) + (2/3)*dt*DUrhovxy;
Urhovyy(2:end - 1,2:end - 1) = (1/3)*Urhovyy(2:end - 1,2:end - 1) + (2/3)*UrhovyyII(2:end - 1,2:end - 1) + (2/3)*dt*DUrhovyy;

UE(2:end - 1,2:end - 1) = (1/3)*UE(2:end - 1,2:end - 1) + (2/3)*UEII(2:end - 1,2:end - 1) + (2/3)*dt*DUE;
UEx(2:end - 1,2:end - 1) = (1/3)*UEx(2:end - 1,2:end - 1) + (2/3)*UExII(2:end - 1,2:end - 1) + (2/3)*dt*DUEx;
UEy(2:end - 1,2:end - 1) = (1/3)*UEy(2:end - 1,2:end - 1) + (2/3)*UEyII(2:end - 1,2:end - 1) + (2/3)*dt*DUEy;
UExx(2:end - 1,2:end - 1) = (1/3)*UExx(2:end - 1,2:end - 1) + (2/3)*UExxII(2:end - 1,2:end - 1) + (2/3)*dt*DUExx;
UExy(2:end - 1,2:end - 1) = (1/3)*UExy(2:end - 1,2:end - 1) + (2/3)*UExyII(2:end - 1,2:end - 1) + (2/3)*dt*DUExy;
UEyy(2:end - 1,2:end - 1) = (1/3)*UEyy(2:end - 1,2:end - 1) + (2/3)*UEyyII(2:end - 1,2:end - 1) + (2/3)*dt*DUEyy;

UB1(2:end - 1,2:end - 1) = (1/3)*UB1(2:end - 1,2:end - 1) + (2/3)*UB1II(2:end - 1,2:end - 1) + (2/3)*dt*DUB1;
UB1x(2:end - 1,2:end - 1) = (1/3)*UB1x(2:end - 1,2:end - 1) + (2/3)*UB1xII(2:end - 1,2:end - 1) + (2/3)*dt*DUB1x;
UB1y(2:end - 1,2:end - 1) = (1/3)*UB1y(2:end - 1,2:end - 1) + (2/3)*UB1yII(2:end - 1,2:end - 1) + (2/3)*dt*DUB1y;
UB1xx(2:end - 1,2:end - 1) = (1/3)*UB1xx(2:end - 1,2:end - 1) + (2/3)*UB1xxII(2:end - 1,2:end - 1) + (2/3)*dt*DUB1xx;
UB1xy(2:end - 1,2:end - 1) = (1/3)*UB1xy(2:end - 1,2:end - 1) + (2/3)*UB1xyII(2:end - 1,2:end - 1) + (2/3)*dt*DUB1xy;
UB1yy(2:end - 1,2:end - 1) = (1/3)*UB1yy(2:end - 1,2:end - 1) + (2/3)*UB1yyII(2:end - 1,2:end - 1) + (2/3)*dt*DUB1yy;

UB2(2:end - 1,2:end - 1) = (1/3)*UB2(2:end - 1,2:end - 1) + (2/3)*UB2II(2:end - 1,2:end - 1) + (2/3)*dt*DUB2;
UB2x(2:end - 1,2:end - 1) = (1/3)*UB2x(2:end - 1,2:end - 1) + (2/3)*UB2xII(2:end - 1,2:end - 1) + (2/3)*dt*DUB2x;
UB2y(2:end - 1,2:end - 1) = (1/3)*UB2y(2:end - 1,2:end - 1) + (2/3)*UB2yII(2:end - 1,2:end - 1) + (2/3)*dt*DUB2y;
UB2xx(2:end - 1,2:end - 1) = (1/3)*UB2xx(2:end - 1,2:end - 1) + (2/3)*UB2xxII(2:end - 1,2:end - 1) + (2/3)*dt*DUB2xx;
UB2xy(2:end - 1,2:end - 1) = (1/3)*UB2xy(2:end - 1,2:end - 1) + (2/3)*UB2xyII(2:end - 1,2:end - 1) + (2/3)*dt*DUB2xy;
UB2yy(2:end - 1,2:end - 1) = (1/3)*UB2yy(2:end - 1,2:end - 1) + (2/3)*UB2yyII(2:end - 1,2:end - 1) + (2/3)*dt*DUB2yy;