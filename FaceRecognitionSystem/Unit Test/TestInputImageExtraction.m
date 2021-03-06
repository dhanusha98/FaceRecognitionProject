classdef TestInputImageExtraction < matlab.unittest.TestCase
    %TESTINPUTIMAGEEXTRACTION Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    end
    
    methods (Test)
        
        function testImagePathNameExtraction(testCase)
            
            %This Test Case is to Check Accuracy of Image Path URL Extraction
            %from system
            
            pathname=evalin('base', 'pathname');
            
            Empty=[];
            
             if isempty(pathname)
                
                Empty=pathname; %If pathname empty, pathname will be assigned to 'k' variable
                
            else
                
               NonEmpty=pathname; %If pathname is Not empty, pathname will be assigned to 'k' variable
            end
           
            ExpectedSolution=NonEmpty;
            ActualSolution=pathname;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
               
        end
        
        function testImageFileExtraction(testCase)
            
            %This Test Case is to Check Accuracy of Image File Name Extraction
            %from system
            
            filename=evalin('base', 'filename');
            
            Empty=[];
            
             if isempty(filename)
                
                Empty=filename; %If filename empty, filename will be assigned to 'k' variable
                
            else
                
               NonEmpty=filename; %If filename is Not empty, filename will be assigned to 'k' variable
            end
           
            ExpectedSolution=NonEmpty;
            ActualSolution=filename;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
            
              
        end
        
        function testImageAvailability(testCase)
            
            %This Test Case is to Check Accuracy etc. of Entire Image File
            %Extraction from system based on 'PathName' and 'FileName' as
            %in above two test cases
            
            img=evalin('base', 'img'); 
            Empty=[];
            
            if isempty(img)
                
                Empty=img; %If Image File empty, it will be assigned to 'k' variable
                
            else
                
               NonEmpty=img; %If Image File is Not empty, it will be assigned to 'k' variable
            end
           
            ExpectedSolution=NonEmpty;
            ActualSolution=img;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
            
        end
        
        function testImageDisplayFeature(testCase)
            
            %This Test Case is to check whether system displays the Input
            %Image in Image Displaying 'Axes' in MATLAB GUI
            
            Axes=evalin('base', 'Axes');
            Empty=[];
            
             if isempty(Axes)
                
                Empty=Axes; %If pathname empty, pathname will be assigned to 'k' variable
                
            else
                
               NonEmpty=Axes; %If pathname is Not empty, pathname will be assigned to 'k' variable
            end
           
            ExpectedSolution=NonEmpty;
            ActualSolution=Axes;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
            
        end
        
        
        function testNegativeImagePathNameExtraction(testCase)
            
            %This Test Case is to Check whether if image pathname doesn't
            %extracted from system features; test become fails to prevent
            %inaccuracy.
            
            %If this test become fails, then system is Accurate
            
            pathname=evalin('base', 'pathname');
            Empty=[];
            
             if isempty(pathname)
                
                Empty=pathname; %If pathname empty, pathname will be assigned to 'k' variable
                
            else
                
               NonEmpty=pathname; %If pathname is Not empty, pathname will be assigned to 'k' variable
            end
           
            ExpectedSolution=NonEmpty;
            ActualSolution=Empty;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
             
        end
        
        function testNegativeImageFileExtraction(testCase)
            
            %This Test Case is to Check whether if image filename doesn't
            %extracted from system features; test become fails to prevent
            %inaccuracy.
            
            %If this test become fails, then system is Accurate
            
            
            filename=evalin('base', 'filename');
            Empty=[];
            
             if isempty(filename)
                
                Empty=filename; %If filename empty, filename will be assigned to 'k' variable
                
            else
                
               NonEmpty=filename; %If filename is Not empty, filename will be assigned to 'k' variable
            end
           
            ExpectedSolution=NonEmpty;
            ActualSolution=Empty;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
                
        end
        
        function testNegativeImageAvailability(testCase)
            
            %This Test Case is to Check whether if entire image file doesn't
            %extracted from system features; test become fails to prevent
            %inaccuracy.
            
            %If this test become fails, then system is Accurate
            
            img=evalin('base', 'img'); 
            Empty=[];
            
            if isempty(img)
                
                Empty=img; %If Image File empty, it will be assigned to 'k' variable
                
            else
                
               NonEmpty=img; %If Image File is Not empty, it will be assigned to 'k' variable
            end
           
            ExpectedSolution=NonEmpty;
            ActualSolution=Empty;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
                 
        end
        
        function testNegativeImageDisplayFeature(testCase)
            
            %This Test Case is to Check whether if image doesn't
            %display from system features; test become fails to prevent
            %inaccuracy.
            
            %If this test become fails, then system is Accurate
            
            Axes=evalin('base', 'Axes');
            Empty=[];
            
             if isempty(Axes)
                
                Empty=Axes; %If 'Axes' (Image display feature) empty, empty/null will be assigned to 'validation' variable
                
            else
                
               NonEmpty=Axes; %If 'Axes' (Image display feature) empty, it will be assigned to 'validation' variable
            end
           
            ExpectedSolution=NonEmpty;
            ActualSolution=Empty;
            
            testCase.verifyEqual(ActualSolution,ExpectedSolution);
            
        end
        
    end
    
end

