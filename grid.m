classdef grid < handle
    %GRID Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        eds_src = ones(3, 1)
        z_src = ones(3, 3)
        src_id = 1
        node_list
        line_list
    end
    
    methods
        % �����������
        function obj = grid(src_id, varargin)
            % ===================================================
            % src_id  -- str, source node id 
            % eds_src -- float array (3, 1)
            % z_src   -- complex array (3, 3)
            % ===================================================
            
            % ������ ��������� ���������, ���� �����
            if (numel(varargin) >= 1) && ~isempty(varargin{1})
               % �������� �� �����������
               obj.eds_src = eds_src;
               if ~isempty(varargin{2})
                   % �������� �� �����������
                   obj.z_src = z_src;
               end
            else
                obj.eds_src = eds_src;
                obj.z_src = z_src;
            end
            
            % ������� ����, ������� ������������ ���������
            add_node(obj, obj.src_id)
            
            obj.src_id = src_id;
        end
        
        
        % ���������� ����
        function add_node(this, node_id, varargin)
            % ===================================================
            % node_name -- str, unique node name 
            % 
            % ===================================================
            
        end
        
        
        % ���������� �����
        function add_line(this, line_id, node_in_id, node_out_id, varargin) 
            % ===================================================
            % line_name -- str, unique line name 
            % node_in   -- str, unique node name in 
            % node_out  -- str, unique node name out
            % ===================================================
            
        end
        
        
        
    end
    
end

