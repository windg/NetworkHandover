%% master
t = 0:0.1:10;
numUE = 10;
UE_List = [];
for i = 1 : numUE
   UE_List = [UE_List;Device('eMBB',[0,0],[1,0],3)];
   
end
for i = 1 : length(t)
    for j = 1 : numUE
        UE_List(j).move(0.1);
    end
    %% Check handover status
    
end