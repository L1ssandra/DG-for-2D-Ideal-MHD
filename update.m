% update.m
Urho(2:end - 1,2:end - 1) = Urho(2:end - 1,2:end - 1) + dt*DUrho;
Urhox(2:end - 1,2:end - 1) = Urhox(2:end - 1,2:end - 1) + dt*DUrhox;
Urhoy(2:end - 1,2:end - 1) = Urhoy(2:end - 1,2:end - 1) + dt*DUrhoy;
Urhoxx(2:end - 1,2:end - 1) = Urhoxx(2:end - 1,2:end - 1) + dt*DUrhoxx;
Urhoxy(2:end - 1,2:end - 1) = Urhoxy(2:end - 1,2:end - 1) + dt*DUrhoxy;
Urhoyy(2:end - 1,2:end - 1) = Urhoyy(2:end - 1,2:end - 1) + dt*DUrhoyy;

Urhou(2:end - 1,2:end - 1) = Urhou(2:end - 1,2:end - 1) + dt*DUrhou;
Urhoux(2:end - 1,2:end - 1) = Urhoux(2:end - 1,2:end - 1) + dt*DUrhoux;
Urhouy(2:end - 1,2:end - 1) = Urhouy(2:end - 1,2:end - 1) + dt*DUrhouy;
Urhouxx(2:end - 1,2:end - 1) = Urhouxx(2:end - 1,2:end - 1) + dt*DUrhouxx;
Urhouxy(2:end - 1,2:end - 1) = Urhouxy(2:end - 1,2:end - 1) + dt*DUrhouxy;
Urhouyy(2:end - 1,2:end - 1) = Urhouyy(2:end - 1,2:end - 1) + dt*DUrhouyy;

Urhov(2:end - 1,2:end - 1) = Urhov(2:end - 1,2:end - 1) + dt*DUrhov;
Urhovx(2:end - 1,2:end - 1) = Urhovx(2:end - 1,2:end - 1) + dt*DUrhovx;
Urhovy(2:end - 1,2:end - 1) = Urhovy(2:end - 1,2:end - 1) + dt*DUrhovy;
Urhovxx(2:end - 1,2:end - 1) = Urhovxx(2:end - 1,2:end - 1) + dt*DUrhovxx;
Urhovxy(2:end - 1,2:end - 1) = Urhovxy(2:end - 1,2:end - 1) + dt*DUrhovxy;
Urhovyy(2:end - 1,2:end - 1) = Urhovyy(2:end - 1,2:end - 1) + dt*DUrhovyy;

UE(2:end - 1,2:end - 1) = UE(2:end - 1,2:end - 1) + dt*DUE;
UEx(2:end - 1,2:end - 1) = UEx(2:end - 1,2:end - 1) + dt*DUEx;
UEy(2:end - 1,2:end - 1) = UEy(2:end - 1,2:end - 1) + dt*DUEy;
UExx(2:end - 1,2:end - 1) = UExx(2:end - 1,2:end - 1) + dt*DUExx;
UExy(2:end - 1,2:end - 1) = UExy(2:end - 1,2:end - 1) + dt*DUExy;
UEyy(2:end - 1,2:end - 1) = UEyy(2:end - 1,2:end - 1) + dt*DUEyy;

UB1(2:end - 1,2:end - 1) = UB1(2:end - 1,2:end - 1) + dt*DUB1;
UB1x(2:end - 1,2:end - 1) = UB1x(2:end - 1,2:end - 1) + dt*DUB1x;
UB1y(2:end - 1,2:end - 1) = UB1y(2:end - 1,2:end - 1) + dt*DUB1y;
UB1xx(2:end - 1,2:end - 1) = UB1xx(2:end - 1,2:end - 1) + dt*DUB1xx;
UB1xy(2:end - 1,2:end - 1) = UB1xy(2:end - 1,2:end - 1) + dt*DUB1xy;
UB1yy(2:end - 1,2:end - 1) = UB1yy(2:end - 1,2:end - 1) + dt*DUB1yy;

UB2(2:end - 1,2:end - 1) = UB2(2:end - 1,2:end - 1) + dt*DUB2;
UB2x(2:end - 1,2:end - 1) = UB2x(2:end - 1,2:end - 1) + dt*DUB2x;
UB2y(2:end - 1,2:end - 1) = UB2y(2:end - 1,2:end - 1) + dt*DUB2y;
UB2xx(2:end - 1,2:end - 1) = UB2xx(2:end - 1,2:end - 1) + dt*DUB2xx;
UB2xy(2:end - 1,2:end - 1) = UB2xy(2:end - 1,2:end - 1) + dt*DUB2xy;
UB2yy(2:end - 1,2:end - 1) = UB2yy(2:end - 1,2:end - 1) + dt*DUB2yy;

%mesh(UE);error