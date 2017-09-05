classdef TestUserLogin <matlab.unittest.TestCase
    %TESTUSERLOGIN Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    end
    
    methods (Test)
        
        function testAccurateUserValidation(testCase) 
            
            username='DhanushaPS';
            password='19981212dps';
            
            k=SystemUserDataLayer(username, password);
            
        end
        
        function testNegativeUserValidation(testCase) 
            
            
        end
        
        function testFormValidationCapability(testCase) 
            
            
            
        end
        
        function testCaseSensitiveness(testCase) 
            
            
            
        end
        
    end
    
end

