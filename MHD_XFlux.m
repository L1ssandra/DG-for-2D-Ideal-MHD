function [f1,f2,f3,f4,f5,f6] = MHD_XFlux(a,b,c,d,e,f)

global gamma

p = (d - 0.5.*(b.^2 + c.^2)./a - 0.5.*(e.^2 + f.^2)).*(gamma - 1);
S = p + 0.5.*(e.^2 + f.^2);
T = d + p + 0.5.*(e.^2 + f.^2);
K = b.*e./a + c.*f./a;

f1 = b;
f2 = b.^2./a + S - e.^2;
f3 = b.*c./a - e.*f;
f4 = T.*b./a - K.*e;
f5 = 0.*a;
f6 = -(c.*e - b.*f)./a;

end