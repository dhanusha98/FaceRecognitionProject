function UserAuthenticationValidation=SystemUserDataLayer(username, password)

%DATA ACCESS LAYER FOR USER AUTHENTICATION VERIFICATION OF LOGIN

connection=database('FaceDBConnection', 'root', '');    %Build Connection for Database
setdbprefs('DataReturnFormat','cellarray')              %Database Result return format set as Cell Array
searchquery=['SELECT * FROM systemuser WHERE BINARY UserName=', '''' username '''', 'AND Password=', '''' password ''''];  %SEARCH QUERY
curs=exec(connection,searchquery);
curs=fetch(curs);

uservalidation=curs.Data;    %Retrieved Results of User Account assigned to 'uservalidation' variable
assignin('base', 'uservalidation', uservalidation);

end