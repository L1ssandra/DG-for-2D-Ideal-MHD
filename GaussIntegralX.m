function u = GaussIntegralX(H,V)

global WEIGHTX quad hy1 Nx Ny

Value = WEIGHTX(1:end - 2,:).*(H.*V);
u = zeros(Nx,Ny + 2);

for j = 1:Ny + 2
    u(:,j) = sum(Value(:,(j - 1)*quad + 1:j*quad),2);
end

u = hy1*u;

end
