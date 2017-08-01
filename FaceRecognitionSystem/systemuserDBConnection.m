%Set preferences with setdbprefs.
setdbprefs('DataReturnFormat', 'cellarray');
setdbprefs('NullNumberRead', 'NaN');
setdbprefs('NullStringRead', 'null');


%Make connection to database.  Note that the password has been omitted.
%Using ODBC driver.
conn = database('Local Databases', 'root', '');

%Read data from database.
curs = exec(conn, ['SELECT 	systemuser.UserID'...
    ' ,	systemuser.Username'...
    ' ,	systemuser.Password'...
    ' ,	systemuser.Name'...
    ' ,	systemuser.UserContactDetails'...
    ' ,	systemuser.Address'...
    ' ,	systemuser.OtherDetails'...
    ' FROM 	`facerecogntion`.systemuser ']);

curs = fetch(curs);
close(curs);

%Assign data to output variable
systemuser = curs.Data;

%Close database connection.
close(conn);

%Clear variables
clear curs conn