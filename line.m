classdef line < handle
   
    %==================================PROPERTIES==============================================
    
    properties 
        %Defining properties of the line class
        
        node_in; %Parent node
        node_out; %Child node
        W; %Matrix W 6*6
        L; %Line length
        I_in; %Current at the input node
        U_in; %Voltage at the input node
        sigma_in; %Matrix of input conductivities
        ID; %Node ID
        
     
    end
    
     %==================================METHODS=================================================
     
    methods 
        %Defining methods of the line class
         
        function obj = Line(ID,node_in,node_out,varargin)
            
            %==============================================================
            % id -- integer 
            % node_in, node_out -- 
            % I_in, U_in -- Vector (3,1)
            % sigma_in -- Matrix (3,3)
            % load -- Matrix (3,3)
            %==============================================================
            
        %Class constructor
        if (nargin>0)
            obj.node_in = node_in;
                if (obj(varargin) <= 1) && ~isempty(varargin{1})
                obj.line_in = varargin{1}; 
            end
            obj.node_out = node_out;
            obj.ID = ID;
            obj.W = W;
            obj.L = L;
            obj.I_in = I_in;
            obj.U_in = U_in;
            obj.ID = ID;
            obj.sigma_in = sigma_in;
        end
        
        end
    end
    
end

