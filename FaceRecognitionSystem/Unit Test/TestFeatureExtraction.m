classdef TestFeatureExtraction < matlab.unittest.TestCase
    %UNTITLED5 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    end
    %This Test is to check ability to do Feature Extraction from Developed system
    methods (Test)
        
        function testFaceHeight(testCase)
            
            FaceHeight=evalin('base','FaceHeight');
            
            if isempty(FaceHeight)
                
                k=FaceHeight;
                
            else
                
               NonEmpty=FaceHeight;
            end
            
            ExpectedSolution=NonEmpty;
            ActualSolution=FaceHeight;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
               
        end
        
        function testLeftEyeWidth(testCase)
            
            Width_LeftEye=evalin('base','Width_LeftEye');
            
            if isempty(Width_LeftEye)
                
                k=Width_LeftEye;
                
            else
                
               NonEmpty=Width_LeftEye;
            end
            
            ExpectedSolution=NonEmpty;
            ActualSolution=Width_LeftEye;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
               
        end
        
        function testRightEyeWidth(testCase)
            
            Width_RightEye=evalin('base','Width_RightEye');
            
            if isempty(Width_RightEye)
                
                k=Width_RightEye;
                
            else
                
               NonEmpty=Width_RightEye;
            end
            
            ExpectedSolution=NonEmpty;
            ActualSolution=Width_RightEye;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
               
        end
        
        function testLeftEyeToMouthDistance(testCase)
            
            Distance_LeftEye_Mouth=evalin('base','Distance_LeftEye_Mouth');
            
            if isempty(Distance_LeftEye_Mouth)
                
                k=Distance_LeftEye_Mouth;
                
            else
                
               NonEmpty=Distance_LeftEye_Mouth;
            end
            
            ExpectedSolution=NonEmpty;
            ActualSolution=Distance_LeftEye_Mouth;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
               
        end
        
        function testLeftEyeToNoseDistance(testCase)
            
            Distance_LeftEye_Nose=evalin('base','Distance_LeftEye_Nose');
            
            if isempty(Distance_LeftEye_Nose)
                
                k=Distance_LeftEye_Nose;
                
            else
                
               NonEmpty=Distance_LeftEye_Nose;
            end
            
            ExpectedSolution=NonEmpty;
            ActualSolution=Distance_LeftEye_Nose;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
               
        end
        
        function testNoseToMouthDistance(testCase)
            
            Distance_Nose_Mouth=evalin('base','Distance_Nose_Mouth');
            
            if isempty(Distance_Nose_Mouth)
                
                k=Distance_Nose_Mouth;
                
            else
                
               NonEmpty=Distance_Nose_Mouth;
            end
            
            ExpectedSolution=NonEmpty;
            ActualSolution=Distance_Nose_Mouth;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
               
        end
        
        function testRightEyeToMouthDistance(testCase)
            
            Distance_RightEye_Mouth=evalin('base','Distance_RightEye_Mouth');
            
            if isempty(Distance_RightEye_Mouth)
                
                k=Distance_RightEye_Mouth;
                
            else
                
               NonEmpty=Distance_RightEye_Mouth;
            end
            
            ExpectedSolution=NonEmpty;
            ActualSolution=Distance_RightEye_Mouth;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
               
        end
        
        function testRightEyeToNoseDistance(testCase)
            
            Distance_RightEye_Nose=evalin('base','Distance_RightEye_Nose');
            
            if isempty(Distance_RightEye_Nose)
                
                k=Distance_RightEye_Nose;
                
            else
                
               NonEmpty=Distance_RightEye_Nose;
            end
            
            ExpectedSolution=NonEmpty;
            ActualSolution=Distance_RightEye_Nose;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
               
        end
    end
    
end

