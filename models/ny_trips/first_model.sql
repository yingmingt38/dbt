select vendorid, round(sum(trip_distance), 2) as sum_distance
from {{ source("ny_trip_source", "green_trips_with_id") }}
group by vendorid
