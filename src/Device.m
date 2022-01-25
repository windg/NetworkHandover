classdef Device < matlab.mixin.SetGet
    properties 
        Type
        Location
        Speed
        Datarate = 0;
        NumAntenna 
        Range = 10;
        ID 
        
    end
    methods
        function obj = Device(Type, Location,Speed,NumAntenna)
            obj.Type = Type;
            obj.Location = Location;
            obj.Speed = Speed;
            obj.NumAntenna = NumAntenna;
            obj.CalDatarate();
        end
        function CalDatarate(obj)
            obj.Datarate = 10;
        end
        function move(obj, dt)
            obj.Location = obj.Location+dt*obj.Speed;
        end
    end
end