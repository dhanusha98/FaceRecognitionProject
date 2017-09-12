%finaloutputresult=num2str(result);  %Convert Neural Network result to String format

conn=database('FaceDBConnection', 'root', ''); 

curs = exec(conn, ['SELECT * FROM 	`facerecognitiondb`.systemuser ']);

curs = fetch(curs);
close(curs);

SystemUserInfoTable = curs.Data;
