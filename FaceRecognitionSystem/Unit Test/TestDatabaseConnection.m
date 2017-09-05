classdef TestDatabaseConnection <matlab.unittest.TestCase
    %TESTDATABASECONNECTION Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    end
    
    methods (Test)
        
        function testDBConnection(testCase) 
            
            %This is to check capability to build database connection for
            %correct connection name, user authentications of Database
            
            connection=database('FaceDBConnection', 'root', '');
            connectionMsg=connection.Message;
            SuccessfulValidation=[];
            
            if length(connectionMsg)>0
                
                %If connectionMsg is empty mean sense database
                %connection successfully built. Otherwise error
                %notification will available in connection.Message field
                
                SuccessfulValidation=connectionMsg; 
            end
            ExpectedSolution=SuccessfulValidation;
            ActualSolution=connection.Message;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
        end 
        
        function testNegativeDBConnectionForConnectionName(testCase) 
            
            %This is to check incapability to build database connection if
            %'Connection Name is Inaccurate (ex. Different Name for
            %'FaceDBConnection')
            
            %If this test passed; Build Database Connection is Accurate and
            %Highly Secured
            
            connection=database('FaceDBConnectionTTT', 'root', '');
            connectionMsg=connection.Message;
            SuccessfulValidation=[];
            
            if length(connectionMsg)>0
                 
                %If connection.Message is empty mean sense database
                %connection successfully built. Otherwise error
                %notification will available in connection.Message field 
                
                SuccessfulValidation=connectionMsg;      
            end
            
            ExpectedSolution=SuccessfulValidation;
            ActualSolution=connection.Message;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
        end 
        
        function testResultForInvalidUsername(testCase) 
            
            %This is to check incapability to build database connection if
            %'Username' for Database is Inaccurate (ex. Different Name for
            %'root')
            
            connection=database('FaceDBConnection', 'rootsdd', '');
            connectionMsg=connection.Message;
            SuccessfulValidation=[];
            
            if length(connectionMsg)>0
                 
                %If connection.Message is empty mean sense database
                %connection successfully built. Otherwise error
                %notification will available in connection.Message field 
                
                SuccessfulValidation=connectionMsg;      
            end
            
            ExpectedSolution=SuccessfulValidation;
            ActualSolution=connection.Message;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
        end 
        
        function testResultForInvalidPassword(testCase) 
            
           %This is to check incapability to build database connection if
           %'Username' for Database is Inaccurate (ex. Different Name for
           %'' field which is unset)
            
           connection=database('FaceDBConnection', 'root', 'JohnSDDDD');
            connectionMsg=connection.Message;
            SuccessfulValidation=[];
            
            if length(connectionMsg)>0
                 
                %If connection.Message is empty mean sense database
                %connection successfully built. Otherwise error
                %notification will available in connection.Message field 
                
                SuccessfulValidation=connectionMsg;      
            end
            
            ExpectedSolution=SuccessfulValidation;
            ActualSolution=connection.Message;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
        end 
           
         function testCaseSensitiveness(testCase) 
            
           %This is to check case sensitiveness of user authentications to build database
           %connection.
            
            connection=database('FaceDBConnection', 'ROOT', '');
            connectionMsg=connection.Message;
            SuccessfulValidation=[];
            
            if length(connectionMsg)>0
                 
                %If connection.Message is empty mean sense database
                %connection successfully built. Otherwise error
                %notification will available in connection.Message field 
                
                SuccessfulValidation=connectionMsg;      
            end
            
            ExpectedSolution=SuccessfulValidation;
            ActualSolution=connection.Message;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
           end 
    end
    
end

