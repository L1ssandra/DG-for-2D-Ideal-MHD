function u = GaussIntegralY(H,V)

global WEIGHTY quad hx1 Nx Ny

Value = WEIGHTY(:,2:end - 1).*(H.*V);
u = zeros(Nx + 2,Ny);

for i = 1:Nx + 2
    u(i,:) = sum(Value((i - 1)*quad + 1:i*quad,:),1);
end

u = hx1*u;

end