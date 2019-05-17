# SQLmlservices

Here are the steps to operationalize Python scripts using sklearn with SQL Server ML services

* (Dev environment on Azure) Provision Data Science VM or (On-premise) set up SQL Server with ML services
* Embed Python script in TrainModelSP script and execute
* Execute RunTrainModel to run stored procedure of model training. This will persist model in seralized table in table with metadata including model name, performance, and training date
* Execute PredictModelSP script for model predictions as a stored procedure
* For new data coming in, execute the PredictModelSP stored procedue. Example is provided in RunPredictModel script