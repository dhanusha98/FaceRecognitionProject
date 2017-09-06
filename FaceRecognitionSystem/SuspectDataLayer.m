
function Suspects_Info=SuspectDataLayer(result)

%DATA ACCESS LAYER FILE TO RETRIEVE SUSPECTS' INFORMATION BASED ON
%GENERATED FINAL OUTPUT FROM NEURAL NETWORK OF SYSTEM

finaloutputresult=num2str(result);  %Convert Neural Network result to String format

conn=database('FaceDBConnection', 'root', '');  %Build Connection for Database
setdbprefs('DataReturnFormat','cellarray')    %Database Result return format set as Cell Array
searchquery=['SELECT * FROM suspect WHERE UniqueClass=', '''' finaloutputresult '''']; %SEARCH QUERY
curs=exec(conn,searchquery); 
curs=fetch(curs);

data=curs.Data;    %Retrieved Results of Recognized Person (Suspect) to 'data' variable
assignin('base', 'data', data);

PID=data(1);              %Person ID of Person in retrieved result
PersonName=data(2);       %Person Name of retrieved result
DOB=data(3);              %Date of Birth of Person in retrieved result
Sex=data(4);              %Sex
Height=data(5);           %Height of Person
Weight=data(6);           %Weight of Person
EyeColor=data(7);         %Eye Color of Person
Ethnicity=data(8);        %Ethnicity of Person
Hair=data(9);             %Hair of Person
ContactDetails=data(10);  %Contact Details of Person
Address=data(11);         %Address of Person
Description=data(12);     %Description about Person
Country=data(13);         %Country of Person
CriminalHistory=data(14); %Criminal History of Person
UniqueClass=data(15);     %Unique Class of Person (This is the column value used to retrieve recognized person results)
FaceImage=data(16);       %Face Image of Person

assignin('base', 'PID', PID);      
assignin('base', 'PersonName', PersonName);
assignin('base', 'DOB', DOB);
assignin('base', 'Sex', Sex);
assignin('base', 'Height', Height);                 
assignin('base', 'Weight', Weight);
assignin('base', 'EyeColor', EyeColor);
assignin('base', 'Ethnicity', Ethnicity);             %Assign All Person Details to Workspace
assignin('base', 'Hair', Hair);
assignin('base', 'ContactDetails', ContactDetails);
assignin('base', 'Address', Address);
assignin('base', 'Description', Description);
assignin('base', 'Country', Country);
assignin('base', 'CriminalHistory', CriminalHistory);
assignin('base', 'UniqueClass', UniqueClass);
assignin('base', 'FaceImage', FaceImage);

end



