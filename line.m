classdef line < handle
    %LINE Summary of this class goes here
    %   Detailed explanation goes here

    %==================================PROPERTIES==============================================
    
    properties 
        %����������� ������� ������ line
        
        node_in;  % Father ����
        node_out; % �������� ����
        W; %������� W 6*6
        L; %����� �����
        I_in; %��� �� ������� ����
        U_in; %���������� �� ������� ����
        sigma_in; %������� ������������� �� �����
        ID; %ID ����
        
     
    end
    
     %==================================METHODS=================================================
     
    methods 
        %����������� ������� ������ line
        
        function obj = Line(node_in,node_out,W,L,I_in,U_in,sigma_in,ID)
        %����������� ������
        if (nargin>0)
            obj.node_in = node_in;
            obj.node_out = node_out;
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