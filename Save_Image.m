% Save_Image.m
Qrho = GetGaussValue(Urho,Urhox,Urhoy,Urhoxx,Urhoxy,Urhoyy);
Qrhou = GetGaussValue(Urhou,Urhoux,Urhouy,Urhouxx,Urhouxy,Urhouyy);
Qrhov = GetGaussValue(Urhov,Urhovx,Urhovy,Urhovxx,Urhovxy,Urhovyy);
QE = GetGaussValue(UE,UEx,UEy,UExx,UExy,UEyy);
QB1 = GetGaussValue(UB1,UB1x,UB1y,UB1xx,UB1xy,UB1yy);
QB2 = GetGaussValue(UB2,UB2x,UB2y,UB2xx,UB2xy,UB2yy);

QFrho(:,:,end + 1) = Qrho;
QFrhou(:,:,end + 1) = Qrhou;
QFrhov(:,:,end + 1) = Qrhov;
QFE(:,:,end + 1) = QE;
QFB1(:,:,end + 1) = QB1;
QFB2(:,:,end + 1) = QB2;