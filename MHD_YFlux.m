function [g1,g2,g3,g4,g5,g6] = MHD_YFlux(a,b,c,d,e,f)

global gamma

p = (d - 0.5.*(b.^2 + c.^2)./a - 0.5.*(e.^2 + f.^2)).*(gamma - 1);
S = p + 0.5.*(e.^2 + f.^2);
T = d + p + 0.5.*(e.^2 + f.^2);
K = b.*e./a + c.*f./a;

g1 = c;
g2 = b.*c./a - e.*f;
g3 = c.^2./a + S - f.^2;
g4 = T.*c./a - K.*f;
g5 = -(b.*f - c.*e)./a;
g6 = 0.*a;

end