
   %%
   %Failed to Generate Expected Results for given Inputs
    nnetwork3=evalin('base','network3');
    expectedSolution=101;
    outputresult=nnetwork3([126; 39.11521443; 53.46026562; 133; 78.4346862; 39.11521443; 53.46026562; 139]);
    finaloutputresult=round(outputresult);
    assert(finaloutputresult==expectedSolution);
   %%
   %Generate Expected Results for Many Number of Decimal Points
   nnetwork3=evalin('base','network3');
   expectedSolution=286;
   outputresult=nnetwork3([126; 39.11521443; 53.46026562; 133; 78.4346862; 39.11521443; 53.46026562; 139]);
   finaloutputresult=round(outputresult);
   assert(expectedSolution==finaloutputresult);
   
   %%
   
   %Inability Generate Results for Less Number of Inputs for Neural Network than requirement

   nnetwork3=evalin('base','network3');
   expectedSolution=286;
   outputresult=nnetwork3([126; 39.11521443; 133; 78.4346862; 39.11521443; 53.46026562; 139]); 
   finaloutputresult=round(outputresult);
   assert(expectedSolution==finaloutputresult);
   
   
   %%
   
   %Inability Generate Results for More Inputs for Neural Network than requirement

   nnetwork3=evalin('base','network3');
   expectedSolution=286;
   outputresult=nnetwork3([126; 39.11521443; 39; 133; 78.4346862; 39.11521443; 53.46026562; 139; 123.5; 122.500]); 
   finaloutputresult=round(outputresult);
   assert(expectedSolution==finaloutputresult);
   
   
   %%
   
   %Inability to Generate Results for Inputs with different types (ex.String) except Number Data Types like Integer, Double....
   
   nnetwork3=evalin('base','network3');
   expectedSolution=286;
   outputresult=nnetwork3([126; 39.11521443; 39; '139'; '78.555567'; 39.11521443; 53.46026562; 139; 123.5; 122.500]); 
   finaloutputresult=round(outputresult);
   assert(expectedSolution==finaloutputresult);
   