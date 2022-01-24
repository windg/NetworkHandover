%% Initialization
UE1 = Device('eMBB',[1,0],[1,0]);
UE2 = Device('URLLC',[0,1],[1,0]);

RU1 = RU(10, 10, [0,0]);
RU2 = RU(10, 10, [1,1]);
RU1.ConnectUE(UE1);
RU2.ConnectUE(UE2);
disp(RU1)
disp(RU2)
%% Handover
UE_Handover = RU1.ConnectedUE(1);

RU2.ConnectUE(UE_Handover);

disp(RU1)
disp(RU2)