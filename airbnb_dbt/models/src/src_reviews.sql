with raw_reviews as (
    select * from {{ source('airbnb', 'reviews') }}
)
select 
listing_id,
date as review_date,
comments as review_text,
reviewer_name,
sentiment as review_sentiment
from raw_reviews