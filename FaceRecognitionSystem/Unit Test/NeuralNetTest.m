classdef NeuralNetTest <matlab.unittest.TestCase
    %UNTITLED6 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    end
       
   
      methods (Test)
        
        function testResultsForLessInputs (testCase)
            
            %This test is to check Neural Network's outcome for less number of inputs than required number
            
            expectedoutput=evalin('base', 'roundresult');
            nnetwork3=evalin('base','net1');
            ExpectedSolution=expectedoutput;
            outputresult=nnetwork3([0.049856883,0.038584717,0.0015926980,0.045311827,0.00029306879,0.039483286,0.00020341801,0.035913441,0.00063537835,0.011985656,0.017637881,0.017664751,0.018621536,0.013333741,0.022096395,0.015609451]); 
            ActualSolution=round(outputresult);
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
            
        end
      end
    
       methods (Test)
        
        function testResultsForMoreInputs (testCase)
            
            %This test is to check Neural Network's outcome for more number of inputs than required number
             
            expectedoutput=evalin('base', 'roundresult');
            nnetwork3=evalin('base','net1');
            ExpectedSolution=expectedoutput;
            outputresult=nnetwork3([0.049856883,0.038584717,0.0015926980,0.045311827,0.00029306879,0.039483286,0.00020341801,0.035913441,0.00063537835,0.011985656,0.017637881,0.017664751,0.018621536,0.013333741,0.022096395,0.015609451,0.0099451859,0.13952158,0.045021120,0.17333342,0.036588654,0.11410381,0.036153432,0.10642594,0.040006466,0.22497000,0.30442241,0.23731190,0.25824693,0.15699147,0.16591194,0.21495713,0.20846109,0.25537133,0.094913803,0.24584109,0.070564449,0.16623558,0.062904634,0.21057762,0.076511994,0.058659066,0.055344697,0.039929722,0.050448634,0.041240457,0.041798059,0.050387200,0.056018583,0.059748430,0.021973053,0.040721189,0.029307976,0.038682371,0.020285850,0.059474356,0.028040262,0.40371615,0.28940445,0.28940445,0.28940445,0.28940445]); 
            ActualSolution=round(outputresult);
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
            
        end
       end
       
       methods (Test)
        
        function testResultsForDifferentDataTypes(testCase)
            
           %This test is to check Neural Network's outcome for different data types (ex. String) of Inputs
           
            nnetwork3=evalin('base','net1');
            ExpectedSolution=expectedoutput;
            outputresult=nnetwork3([0.049856883,'0.038584717','0.0015926980','0.045311827',0.00029306879,0.039483286,0.00020341801,0.035913441,0.00063537835,0.011985656,0.017637881,0.017664751,0.018621536,0.013333741,0.022096395,0.015609451,0.0099451859,0.13952158,0.045021120,0.17333342,0.036588654,0.11410381,0.036153432,0.10642594,0.040006466,0.22497000,0.30442241,0.23731190,0.25824693,0.15699147,0.16591194,0.21495713,0.20846109,0.25537133,0.094913803,0.24584109,0.070564449,0.16623558,0.062904634,0.21057762,0.076511994,0.058659066,0.055344697,0.039929722,0.050448634,0.041240457,0.041798059,0.050387200,0.056018583,0.059748430,0.021973053,0.040721189,0.029307976,0.038682371,0.020285850,0.059474356,0.028040262,0.40371615,0.28940445]); 
            ActualSolution=round(outputresult);
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
            
        end
       
       end
       
end
    


