function u = GaussIntegral2D(F,G,Vx,Vy)

global WEIGHT2 quad hx1 hy1 Nx Ny

Value = WEIGHT2.*(F.*Vx + G.*Vy);
u = zeros(Nx + 2,Ny + 2);

for i = 1:Nx + 2
    for j = 1:Ny + 2
        u(i,j) = sum(sum(Value(quad*(i - 1) + 1:quad*i,quad*(j - 1) + 1:quad*j)));
    end
end

u = hx1*hy1*u;

end