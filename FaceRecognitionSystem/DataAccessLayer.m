
%conn=database('FaceDBConnection', 'root', '');
%userid=2;
%useridstring=num2str(userid);
%selectquery=['SELECT * FROM systemuser WHERE UserID=',useridstring];
%data=select(conn,selectquery);
%k=data.UserName;

function x=DataAccessLayer()

%userid='1';
%username='DhanushaPS';
%password='19981212dps';
%conn=database('FaceDBConnection', 'root', '');

result=load('finaloutputresult.txt');
finaloutputresult=num2str(result);

%validationquery=['SELECT * FROM systemuser WHERE UserName=','''' username '''', 'AND Password=', '''' password ''''];
%validationquery=['SELECT * FROM suspect WHERE UniqueClass=','''' finaloutput ''''];
%validationquery=('SELECT * FROM systemuser WHERE UserID=1');

%data=select(conn,validationquery);
%assignin('base', 'data',data);

conn=database('FaceDBConnection', 'root', '');
searchquery=['SELECT * FROM suspect WHERE UniqueClass=', '''' finaloutputresult ''''];
curs=exec(conn,searchquery);
curs=fetch(curs);

data=curs.Data;
assignin('base', 'data', data);


%PID=data.PersonID;
%PersonName=data.PersonName
%DOB=data.DOB;
%Sex=data.Sex;
%Height=data.Height;
%Weight=data.Weight;
%EyeColor=data.EyeColor;
%Hair=data.Hair;
%Ethnicity=data.Ethnicity;
%ContactDetails=data.ContactDetails;
%Address=data.Address;
%Description=data.Description;
%Country=data.Country;
%CriminalHistory=data.CriminalHistory;
%UniqueClass=data.UniqueClass;
%FaceImage=data.FaceImage;


end

