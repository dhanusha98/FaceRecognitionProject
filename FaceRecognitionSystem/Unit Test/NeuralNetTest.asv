classdef NeuralNetTest <matlab.unittest.TestCase
    %UNTITLED6 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    end
    
    methods (Test)
        
        function testResultGeneration(testCase)
            
            %This test case is to verify Neural Network capability to generate target output for certain inputs
            
            nnetwork3=evalin('base','network3');
            expectedSolution=286;
            outputresult=nnetwork3([126; 39.11521443; 53.46026562; 133; 78.4346862; 39.11521443; 53.46026562; 139]);
            ActSolution=round(outputresult);
            testCase.verifyEqual(ActSolution,expectedSolution);
        end


    end
       methods (Test)
        
        function testUnexpectedResult (testCase)
            
            %This test case is to verify how testing failed if Neural Network doesn't give target output for certain inputs
            
            nnetwork3=evalin('base','network3');
            ExpectedSolution=106;
            outputresult=nnetwork3([126; 39.11521443; 53.46026562; 133; 78.4346862; 39.11521443; 53.46026562; 139]);
            ActualSolution=round(outputresult);
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
            
        end
    end
   
      methods (Test)
        
        function testResultsForLessInputs (testCase)
            
            %This test is to check Neural Network's outcome for less number of inputs than required number
            
            nnetwork3=evalin('base','network3');
            ExpectedSolution=286;
            outputresult=nnetwork3([126; 39.11521443; 133; 78.4346862; 39.11521443; 53.46026562; 139]); 
            ActualSolution=round(outputresult);
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
            
        end
      end
    
       methods (Test)
        
        function testResultsForMoreInputs (testCase)
            
            %This test is to check Neural Network's outcome for more number of inputs than required number
 
            nnetwork3=evalin('base','network3');
            ExpectedSolution=286;
            outputresult=nnetwork3([126; 39.11521443; 39; 133; 78.4346862; 39.11521443; 53.46026562; 139; 123.5; 122.500]); 
            ActualSolution=round(outputresult);
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
            
        end
       end
       
       methods (Test)
        
        function testResultsForDifferentDataTypes(testCase)
            
           %This test is to check Neural Network's outcome for different data types (ex. String) of Inputs
           
            nnetwork3=evalin('base','network3');
            ExpectedSolution=286;
            outputresult=nnetwork3([126; 39.11521443; 39; '139'; '78.555567'; 39.11521443; 53.46026562; 139; 123.5; 122.500]); 
            ActualSolution=round(outputresult);
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
            
        end
       
       end
       
end
    


