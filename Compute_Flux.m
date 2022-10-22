function Fstar = Compute_Flux(UL,UR,FL,FR,SR,SL)

% L-F Flux
Fstar = 0.5*(FL + FR - abs(SR)*(UR - UL));

end