
%conn=database('FaceDBConnection', 'root', '');
%userid=2;
%useridstring=num2str(userid);
%selectquery=['SELECT * FROM systemuser WHERE UserID=',useridstring];
%data=select(conn,selectquery);
%k=data.UserName;

function x=DataAccessLayer()

userid='1';
username='DhanushaPS';
password='19981212dps';
conn=database('FaceDBConnection', 'root', '');

%validationquery=['SELECT * FROM systemuser WHERE UserName=','''' username '''', 'AND Password=', '''' password ''''];
validationquery=['SELECT * FROM systemuser WHERE UserName=','''' username ''''];
data=select(conn,validationquery);
assignin('base', 'data',data);

end

