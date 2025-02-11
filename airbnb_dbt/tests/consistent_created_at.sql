select * from {{ ref('dim_listings_cleansed') }} dlc

join {{ ref("fct_reviews") }} fct on (dlc.listing_id = fct.listing_id)
where fct.review_date < dlc.created_at