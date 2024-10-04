USE companydatabase;
GO

CREATE PROCEDURE RunAllSetupProcedures
AS
BEGIN

EXEC CreateTables;
EXEC CreateConstraintsAndRelationships;
EXEC InsertDataFromAnotherDatabase;
EXEC CreateViews;

END;