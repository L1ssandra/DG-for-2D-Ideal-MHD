function Q = GetGaussValue2(U,Ux,Uy,Uxx,Uxy,Uyy)

global VALUEINT1 VALUEINT2 VALUEINT3 VALUEINT4 VALUEINT5 VALUEINT6
global S

UG = kron(U,S);
UGx = kron(Ux,S);
UGy = kron(Uy,S);
UGxx = kron(Uxx,S);
UGxy = kron(Uxy,S);
UGyy = kron(Uyy,S);

Q = UG.*VALUEINT1 + UGx.*VALUEINT2 + UGy.*VALUEINT3 + UGxx.*VALUEINT4 + UGxy.*VALUEINT5 + UGyy.*VALUEINT6;

end