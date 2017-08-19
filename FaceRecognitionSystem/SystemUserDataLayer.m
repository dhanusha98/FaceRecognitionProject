function UserAuthenticationValidation=SystemUserDataLayer(username, password)

%username='DhanushaPS';
%password='19981212dps';
connection=database('FaceDBConnection', 'root', '');
searchquery=['SELECT * FROM systemuser WHERE UserName=', '''' username '''', 'AND Password=', '''' password ''''];
curs=exec(connection,searchquery);
curs=fetch(curs);

uservalidation=curs.Data;
assignin('base', 'uservalidation', uservalidation);

end