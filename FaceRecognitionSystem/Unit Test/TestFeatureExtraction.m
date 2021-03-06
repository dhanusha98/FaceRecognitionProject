classdef TestFeatureExtraction < matlab.unittest.TestCase
    %UNTITLED5 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    end
    %This Test is to check ability to do Feature Extraction from Developed system
    methods (Test)
        
        function testFeatureExtractionCapability(testCase)
            
            %This test case is to check whether features are extracted
            %properly using LBP Algorithm in System for sample test image
            
            Extracted_Face_Features=evalin('base','Extracted_Face_Features');
            
             %[m,n] = size(Extracted_Face_Features);
            
            if ~isempty(Extracted_Face_Features)
                
                NonEmpty=Extracted_Face_Features;
                
            end
            
            ExpectedSolution=NonEmpty;
            ActualSolution=Extracted_Face_Features;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
               
        end
           
    end
    
    methods (Test)
        
       function testAllFeatureExtraction(testCase)
        
            %This test case is to check whether system extracts all 59
            %features using LBP Algorithm for test image
            
            Extracted_Face_Features=evalin('base','Extracted_Face_Features');
            
            [m,n] = size(Extracted_Face_Features);
            
           if n==59
               Successful=n;
           end
           
           ExpectedSolution=Successful;
           ActualSolution=n;
           
           testCase.verifyEqual(ActualSolution,ExpectedSolution);
       end
    
    end

end
