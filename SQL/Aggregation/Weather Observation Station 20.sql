/*

A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) 
from STATION and round your answer to 4 decimal places.

*/

SET @row_index := -1;

SELECT round(AVG(subq.lat_n), 4) as median_value
FROM (
    SELECT @row_index:=@row_index + 1 AS row_index, lat_n
    FROM station
    ORDER BY lat_n
  ) AS subq
  WHERE subq.row_index 
  IN (FLOOR(@row_index / 2) , CEIL(@row_index / 2));
