DECLARE @model VARBINARY(MAX);
DECLARE @LastChangeDate as date
SET @LastChangeDate = GetDate()
EXEC PyTrainScikit @model OUTPUT;
INSERT INTO nyc_taxi_models (name, model, performance, performance_type, trainingdate) VALUES('model1', @model, 0.7578, 'accuracy', @LastChangeDate);