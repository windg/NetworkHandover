classdef Device < matlab.mixin.SetGet
    properties 
        Type
        Location
        Speed
        Datarate = 0;
    end
    methods
        function obj = Device(Type, Location,Speed)
            obj.Type = Type;
            obj.Location = Location;
            obj.Speed = Speed;
        end
        function move(obj, dt)
            obj.Location = obj.Location+dt*obj.Speed;
        end
    end
end