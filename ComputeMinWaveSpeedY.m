function alphay = ComputeMinWaveSpeedY(Qrho,Qrhou,Qrhov,QE,QB1,QB2)

a = abs((5/3)*(QE - 0.5.*(Qrhou.^2 + Qrhov.^2)./Qrho - 0.5.*(QB1.^2 + QB2.^2))./Qrho).^0.5;
cf = 0.5.*abs(a.^2 + (QB1.^2 + QB2.^2)./Qrho + ((a.^2 + (QB1.^2 + QB2.^2)./Qrho).^2 - 4*a.^2.*QB2.^2./Qrho).^0.5 ).^0.5;
alphay = Qrhov./Qrho - cf;

end