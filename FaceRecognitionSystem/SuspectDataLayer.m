
function Suspects_Info=SuspectDataLayer(result)

%This method is to retreive Suspects' Information based on generated final output from Neural Network of System

finaloutputresult=num2str(result);

conn=database('FaceDBConnection', 'root', '');
setdbprefs('DataReturnFormat','cellarray')
searchquery=['SELECT * FROM suspect WHERE UniqueClass=', '''' finaloutputresult ''''];
curs=exec(conn,searchquery);
curs=fetch(curs);

data=curs.Data;
assignin('base', 'data', data);

PID=data(1);
PersonName=data(2);
DOB=data(3);
Sex=data(4);
Height=data(5);
Weight=data(6);
EyeColor=data(7);
Ethnicity=data(8);
Hair=data(9);
ContactDetails=data(10);
Address=data(11);
Description=data(12);
Country=data(13);
CriminalHistory=data(14);
UniqueClass=data(15);
FaceImage=data(16);

assignin('base', 'PID', PID);
assignin('base', 'PersonName', PersonName);
assignin('base', 'DOB', DOB);
assignin('base', 'Sex', Sex);
assignin('base', 'Height', Height);
assignin('base', 'Weight', Weight);
assignin('base', 'EyeColor', EyeColor);
assignin('base', 'Ethnicity', Ethnicity);
assignin('base', 'Hair', Hair);
assignin('base', 'ContactDetails', ContactDetails);
assignin('base', 'Address', Address);
assignin('base', 'Description', Description);
assignin('base', 'Country', Country);
assignin('base', 'CriminalHistory', CriminalHistory);
assignin('base', 'UniqueClass', UniqueClass);
assignin('base', 'FaceImage', FaceImage);

end



