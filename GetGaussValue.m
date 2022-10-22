function Q = GetGaussValue(U,Ux,Uy,Uxx,Uxy,Uyy)

global VALUEINT1 VALUEINT2 VALUEINT3 VALUEINT4 VALUEINT5 VALUEINT6
global S

UG = kron(U(2:end - 1,2:end - 1),S);
UGx = kron(Ux(2:end - 1,2:end - 1),S);
UGy = kron(Uy(2:end - 1,2:end - 1),S);
UGxx = kron(Uxx(2:end - 1,2:end - 1),S);
UGxy = kron(Uxy(2:end - 1,2:end - 1),S);
UGyy = kron(Uyy(2:end - 1,2:end - 1),S);

Q = UG.*VALUEINT1 + UGx.*VALUEINT2 + UGy.*VALUEINT3 + UGxx.*VALUEINT4 + UGxy.*VALUEINT5 + UGyy.*VALUEINT6;

end

