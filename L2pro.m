function [u,ux,uy,uxx,uxy,uyy] = L2pro(u,ux,uy,uxx,uxy,uyy,u0)

global VALUEINT1 VALUEINT2 VALUEINT3 VALUEINT4 VALUEINT5 VALUEINT6
global lambdax lambday WEIGHT
global Xc Yc hx1 hy1 quad Nx Ny
global m1 m2 m3 m4 m5 m6

U0 = zeros(quad*Nx,quad*Ny);

for i = 1:Nx
    for j = 1:Ny
        for i1 = 1:quad
            for j1 = 1:quad
                U0(quad*(i - 1) + i1,quad*(j - 1) + j1) = u0(Xc(i) + lambdax(i1),Yc(j) + lambday(j1));
            end
        end
    end
end

U1 = WEIGHT.*(U0.*VALUEINT1);
Ux = WEIGHT.*(U0.*VALUEINT2);
Uy = WEIGHT.*(U0.*VALUEINT3);
Uxx = WEIGHT.*(U0.*VALUEINT4);
Uxy = WEIGHT.*(U0.*VALUEINT5);
Uyy = WEIGHT.*(U0.*VALUEINT6);

for i = 1:Nx
    for j = 1:Ny
        u(i,j) = sum(sum(U1(quad*(i - 1) + 1:quad*i,quad*(j - 1) + 1:quad*j)));
        ux(i,j) = sum(sum(Ux(quad*(i - 1) + 1:quad*i,quad*(j - 1) + 1:quad*j)));
        uy(i,j) = sum(sum(Uy(quad*(i - 1) + 1:quad*i,quad*(j - 1) + 1:quad*j)));
        uxx(i,j) = sum(sum(Uxx(quad*(i - 1) + 1:quad*i,quad*(j - 1) + 1:quad*j)));
        uxy(i,j) = sum(sum(Uxy(quad*(i - 1) + 1:quad*i,quad*(j - 1) + 1:quad*j)));
        uyy(i,j) = sum(sum(Uyy(quad*(i - 1) + 1:quad*i,quad*(j - 1) + 1:quad*j)));
    end
end

u = hx1*hy1*u/m1;
ux = hx1*hy1*ux/m2;
uy = hx1*hy1*uy/m3;
uxx = hx1*hy1*uxx/m4;
uxy = hx1*hy1*uxy/m5;
uyy = hx1*hy1*uyy/m6;

end