CREATE TABLE Article (ArticleID int PRIMARY KEY, ArticleTitle varchar(255), ArticleYear int);

CREATE TABLE Refs (RefID SERIAL PRIMARY KEY, ObjectLabel varchar(13), DatasetName varchar(255), Context text, ArticleId int REFERENCES Article (ArticleID)) ;

CREATE TABLE Author (AuthorID SERIAL PRIMARY KEY, AuthorName varchar(255), AuthorEmail varchar(255) UNIQUE);

CREATE TABLE Writes (WritesID SERIAL PRIMARY KEY, ArticleID int REFERENCES Article(ArticleID), AuthorID int REFERENCES Author(AuthorID));

CREATE TABLE Validates (ValidatesID SERIAL PRIMARY KEY, ValidatesToken varchar(255) UNIQUE, WritesID integer REFERENCES Writes(WritesID), CreatedAt date);

CREATE TABLE Validation (ValidationID SERIAL PRIMARY KEY, RefID int REFERENCES Refs(RefID), ValidationChoice varchar(13), ValidationComment text, UpdatedAt date);