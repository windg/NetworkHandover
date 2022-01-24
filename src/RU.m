
classdef RU < matlab.mixin.SetGet
    properties
        NumAntenna
        Datarate
        Location
        Queue
        ConnectedUE
    end
    methods
        function obj = RU(NumAntenna, Datarate, Location)
            
            obj.Queue = [];
            obj.ConnectedUE = [];
            obj.NumAntenna = NumAntenna;
            obj.Datarate = Datarate;
            obj.Location = Location;
        end
        function AddToQueue(obj,UE)
            obj.Queue = [obj.Queue;UE]; 
        end
        function UE = PopQueue(obj)
            if isempty(obj.Queue)
                UE = [];
            else
                UE = obj.Queue(1);
                if length(obj.Queue) >= 2
                    obj.Queue = obj.Queue(2:end)
                else
                    obj.Queue = []
                end
            end
        end
        function ConnectUE(obj,UE)
            obj.ConnectedUE = [obj.ConnectedUE;UE];
        end
        
    end
end