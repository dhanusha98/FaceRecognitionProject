classdef TestFeatureDetection < matlab.unittest.TestCase
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    end
    
    methods (Test)
        
        function testFaceDetection(testCase)
            IFaces=evalin('base','IFaces');
            
            if isequal (IFaces, [])
                
                k=IFaces;
                
            else
                
               NonEmpty=IFaces;
            end
            
            ExpectedSolution=NonEmpty;
            ActualSolution=IFaces;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
            
        end
        
        
    end
    
     methods (Test)
        
        function testLeftEyeDetection(testCase)
            ILeftEye=evalin('base','ILeftEye');
            
            if isequal (ILeftEye, [])
                
                k=ILeftEye;
                
            else
                
               NonEmpty=ILeftEye;
            end
            
            ExpectedSolution=NonEmpty;
            ActualSolution=ILeftEye;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
            
        end
        
        
     end
    
      methods (Test)
        
        function testRightEyeDetection(testCase)
            IRightEye=evalin('base','IRightEye');
            
            if isequal (IRightEye, [])
                
                k=IRightEye;
                
            else
                
               NonEmpty=IRightEye;
            end
            
            ExpectedSolution=NonEmpty;
            ActualSolution=IRightEye;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
            
        end
        
        
      end
    
       methods (Test)
        
        function testMouthDetection(testCase)
            IMouth=evalin('base','IMouth');
            
            if isequal (IMouth, [])
                
                k=IMouth;
                
            else
                
               NonEmpty=IMouth;
            end
            
            ExpectedSolution=NonEmpty;
            ActualSolution=IMouth;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
            
        end
        
        
       end
    
        methods (Test)
        
        function testNoseDetection(testCase)
            INose=evalin('base','INose');
            
            if isequal (INose, [])
                
                k=INose;
                
            else
                
               NonEmpty=INose;
            end
            
            ExpectedSolution=NonEmpty;
            ActualSolution=INose;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
            
        end
        
        
    end
    
   
    
end

