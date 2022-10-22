function Q = GetGaussValue1(U,Ux,Uy,Uxx,Uxy,Uyy)

global VALUEINTB1 VALUEINTB2 VALUEINTB3 VALUEINTB4 VALUEINTB5 VALUEINTB6
global S

UG = kron(U,S);
UGx = kron(Ux,S);
UGy = kron(Uy,S);
UGxx = kron(Uxx,S);
UGxy = kron(Uxy,S);
UGyy = kron(Uyy,S);

Q = UG.*VALUEINTB1 + UGx.*VALUEINTB2 + UGy.*VALUEINTB3 + UGxx.*VALUEINTB4 + UGxy.*VALUEINTB5 + UGyy.*VALUEINTB6;

end