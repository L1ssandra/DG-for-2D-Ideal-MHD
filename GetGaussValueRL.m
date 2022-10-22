function [QR,QL] = GetGaussValueRL(U,Ux,Uy,Uxx,Uxy,Uyy)

global VALUER1 VALUER2 VALUER3 VALUER4 VALUER5 VALUER6
global VALUEL1 VALUEL2 VALUEL3 VALUEL4 VALUEL5 VALUEL6
global S1Q

UG = kron(U,S1Q);
UGx = kron(Ux,S1Q);
UGy = kron(Uy,S1Q);
UGxx = kron(Uxx,S1Q);
UGxy = kron(Uxy,S1Q);
UGyy = kron(Uyy,S1Q);

QR = UG.*VALUER1 + UGx.*VALUER2 + UGy.*VALUER3 + UGxx.*VALUER4 + UGxy.*VALUER5 + UGyy.*VALUER6;
QL = UG.*VALUEL1 + UGx.*VALUEL2 + UGy.*VALUEL3 + UGxx.*VALUEL4 + UGxy.*VALUEL5 + UGyy.*VALUEL6;
end