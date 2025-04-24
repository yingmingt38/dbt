select vendorid, sum(trip_distance)
from {{ source("ny_trip_source", "green_trips_with_id") }}
group by vendorid
