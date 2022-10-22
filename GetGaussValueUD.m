function [QU,QD] = GetGaussValueUD(U,Ux,Uy,Uxx,Uxy,Uyy)

global VALUEU1 VALUEU2 VALUEU3 VALUEU4 VALUEU5 VALUEU6
global VALUED1 VALUED2 VALUED3 VALUED4 VALUED5 VALUED6
global SQ1

UG = kron(U,SQ1);
UGx = kron(Ux,SQ1);
UGy = kron(Uy,SQ1);
UGxx = kron(Uxx,SQ1);
UGxy = kron(Uxy,SQ1);
UGyy = kron(Uyy,SQ1);

QU = UG.*VALUEU1 + UGx.*VALUEU2 + UGy.*VALUEU3 + UGxx.*VALUEU4 + UGxy.*VALUEU5 + UGyy.*VALUEU6;
QD = UG.*VALUED1 + UGx.*VALUED2 + UGy.*VALUED3 + UGxx.*VALUED4 + UGxy.*VALUED5 + UGyy.*VALUED6;
end