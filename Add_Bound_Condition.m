% Add_Bound_Condition.m ¸³±ß½çÌõ¼þ

if Bound_ConditionR == 1
    Urho(end,:) = Urho(2,:);
    Urhox(end,:) = Urhox(2,:);
    Urhoy(end,:) = Urhoy(2,:);
    Urhoxx(end,:) = Urhoxx(2,:);
    Urhoxy(end,:) = Urhoxy(2,:);
    Urhoyy(end,:) = Urhoyy(2,:);
    
    Urhou(end,:) = Urhou(2,:);
    Urhoux(end,:) = Urhoux(2,:);
    Urhouy(end,:) = Urhouy(2,:);
    Urhouxx(end,:) = Urhouxx(2,:);
    Urhouxy(end,:) = Urhouxy(2,:);
    Urhouyy(end,:) = Urhouyy(2,:);
    
    Urhov(end,:) = Urhov(2,:);
    Urhovx(end,:) = Urhovx(2,:);
    Urhovy(end,:) = Urhovy(2,:);
    Urhovxx(end,:) = Urhovxx(2,:);
    Urhovxy(end,:) = Urhovxy(2,:);
    Urhovyy(end,:) = Urhovyy(2,:);
    
    UE(end,:) = UE(2,:);
    UEx(end,:) = UEx(2,:);
    UEy(end,:) = UEy(2,:);
    UExx(end,:) = UExx(2,:);
    UExy(end,:) = UExy(2,:);
    UEyy(end,:) = UEyy(2,:);
    
    UB1(end,:) = UB1(2,:);
    UB1x(end,:) = UB1x(2,:);
    UB1y(end,:) = UB1y(2,:);
    UB1xx(end,:) = UB1xx(2,:);
    UB1xy(end,:) = UB1xy(2,:);
    UB1yy(end,:) = UB1yy(2,:);
    
    UB2(end,:) = UB2(2,:);
    UB2x(end,:) = UB2x(2,:);
    UB2y(end,:) = UB2y(2,:);
    UB2xx(end,:) = UB2xx(2,:);
    UB2xy(end,:) = UB2xy(2,:);
    UB2yy(end,:) = UB2yy(2,:);
end



if Bound_ConditionL == 1
    Urho(1,:) = Urho(end - 1,:);
    Urhox(1,:) = Urhox(end - 1,:);
    Urhoy(1,:) = Urhoy(end - 1,:);
    Urhoxx(1,:) = Urhoxx(end - 1,:);
    Urhoxy(1,:) = Urhoxy(end - 1,:);
    Urhoyy(1,:) = Urhoyy(end - 1,:);
    
    Urhou(1,:) = Urhou(end - 1,:);
    Urhoux(1,:) = Urhoux(end - 1,:);
    Urhouy(1,:) = Urhouy(end - 1,:);
    Urhouxx(1,:) = Urhouxx(end - 1,:);
    Urhouxy(1,:) = Urhouxy(end - 1,:);
    Urhouyy(1,:) = Urhouyy(end - 1,:);
    
    Urhov(1,:) = Urhov(end - 1,:);
    Urhovx(1,:) = Urhovx(end - 1,:);
    Urhovy(1,:) = Urhovy(end - 1,:);
    Urhovxx(1,:) = Urhovxx(end - 1,:);
    Urhovxy(1,:) = Urhovxy(end - 1,:);
    Urhovyy(1,:) = Urhovyy(end - 1,:);
    
    UE(1,:) = UE(end - 1,:);
    UEx(1,:) = UEx(end - 1,:);
    UEy(1,:) = UEy(end - 1,:);
    UExx(1,:) = UExx(end - 1,:);
    UExy(1,:) = UExy(end - 1,:);
    UEyy(1,:) = UEyy(end - 1,:);
    
    UB1(1,:) = UB1(end - 1,:);
    UB1x(1,:) = UB1x(end - 1,:);
    UB1y(1,:) = UB1y(end - 1,:);
    UB1xx(1,:) = UB1xx(end - 1,:);
    UB1xy(1,:) = UB1xy(end - 1,:);
    UB1yy(1,:) = UB1yy(end - 1,:);
    
    UB2(1,:) = UB2(end - 1,:);
    UB2x(1,:) = UB2x(end - 1,:);
    UB2y(1,:) = UB2y(end - 1,:);
    UB2xx(1,:) = UB2xx(end - 1,:);
    UB2xy(1,:) = UB2xy(end - 1,:);
    UB2yy(1,:) = UB2yy(end - 1,:);
end

if Bound_ConditionU == 1
    Urho(:,end) = Urho(:,2);
    Urhox(:,end) = Urhox(:,2);
    Urhoy(:,end) = Urhoy(:,2);
    Urhoxx(:,end) = Urhoxx(:,2);
    Urhoxy(:,end) = Urhoxy(:,2);
    Urhoyy(:,end) = Urhoyy(:,2);
    
    Urhou(:,end) = Urhou(:,2);
    Urhoux(:,end) = Urhoux(:,2);
    Urhouy(:,end) = Urhouy(:,2);
    Urhouxx(:,end) = Urhouxx(:,2);
    Urhouxy(:,end) = Urhouxy(:,2);
    Urhouyy(:,end) = Urhouyy(:,2);
    
    Urhov(:,end) = Urhov(:,2);
    Urhovx(:,end) = Urhovx(:,2);
    Urhovy(:,end) = Urhovy(:,2);
    Urhovxx(:,end) = Urhovxx(:,2);
    Urhovxy(:,end) = Urhovxy(:,2);
    Urhovyy(:,end) = Urhovyy(:,2);
    
    UE(:,end) = UE(:,2);
    UEx(:,end) = UEx(:,2);
    UEy(:,end) = UEy(:,2);
    UExx(:,end) = UExx(:,2);
    UExy(:,end) = UExy(:,2);
    UEyy(:,end) = UEyy(:,2);
    
    UB1(:,end) = UB1(:,2);
    UB1x(:,end) = UB1x(:,2);
    UB1y(:,end) = UB1y(:,2);
    UB1xx(:,end) = UB1xx(:,2);
    UB1xy(:,end) = UB1xy(:,2);
    UB1yy(:,end) = UB1yy(:,2);
    
    UB2(:,end) = UB2(:,2);
    UB2x(:,end) = UB2x(:,2);
    UB2y(:,end) = UB2y(:,2);
    UB2xx(:,end) = UB2xx(:,2);
    UB2xy(:,end) = UB2xy(:,2);
    UB2yy(:,end) = UB2yy(:,2);
end

if Bound_ConditionD == 1
    Urho(:,1) = Urho(:,end - 1);
    Urhox(:,1) = Urhox(:,end - 1);
    Urhoy(:,1) = Urhoy(:,end - 1);
    Urhoxx(:,1) = Urhoxx(:,end - 1);
    Urhoxy(:,1) = Urhoxy(:,end - 1);
    Urhoyy(:,1) = Urhoyy(:,end - 1);
    
    Urhou(:,1) = Urhou(:,end - 1);
    Urhoux(:,1) = Urhoux(:,end - 1);
    Urhouy(:,1) = Urhouy(:,end - 1);
    Urhouxx(:,1) = Urhouxx(:,end - 1);
    Urhouxy(:,1) = Urhouxy(:,end - 1);
    Urhouyy(:,1) = Urhouyy(:,end - 1);
    
    Urhov(:,1) = Urhov(:,end - 1);
    Urhovx(:,1) = Urhovx(:,end - 1);
    Urhovy(:,1) = Urhovy(:,end - 1);
    Urhovxx(:,1) = Urhovxx(:,end - 1);
    Urhovxy(:,1) = Urhovxy(:,end - 1);
    Urhovyy(:,1) = Urhovyy(:,end - 1);
    
    UE(:,1) = UE(:,end - 1);
    UEx(:,1) = UEx(:,end - 1);
    UEy(:,1) = UEy(:,end - 1);
    UExx(:,1) = UExx(:,end - 1);
    UExy(:,1) = UExy(:,end - 1);
    UEyy(:,1) = UEyy(:,end - 1);
    
    UB1(:,1) = UB1(:,end - 1);
    UB1x(:,1) = UB1x(:,end - 1);
    UB1y(:,1) = UB1y(:,end - 1);
    UB1xx(:,1) = UB1xx(:,end - 1);
    UB1xy(:,1) = UB1xy(:,end - 1);
    UB1yy(:,1) = UB1yy(:,end - 1);
    
    UB2(:,1) = UB2(:,end - 1);
    UB2x(:,1) = UB2x(:,end - 1);
    UB2y(:,1) = UB2y(:,end - 1);
    UB2xx(:,1) = UB2xx(:,end - 1);
    UB2xy(:,1) = UB2xy(:,end - 1);
    UB2yy(:,1) = UB2yy(:,end - 1);
end

