\copy Article FROM '~/LUC/duos/dev-environment/tagged_generated_files/articleloadfile.csv' DELIMITER ',' CSV HEADER;
\copy Refs (ObjectLabel, DatasetName, Context, ArticleId) FROM '~/LUC/duos/dev-environment/tagged_generated_files/referencesloadfile.csv' DELIMITER ',' CSV HEADER;