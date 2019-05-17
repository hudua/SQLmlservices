DECLARE @query_string nvarchar(max) -- Specify input query
  SET @query_string='
  select top 100 medallion, tipped, fare_amount, passenger_count, trip_time_in_secs, trip_distance,
  dbo.fnCalculateDistance(pickup_latitude, pickup_longitude,  dropoff_latitude, dropoff_longitude) as direct_distance
  from nyctaxi_sample'
EXEC [dbo].[PredictTipSciKitPy] 'modelrun', @query_string;
