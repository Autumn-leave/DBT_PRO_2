select 
 order_id,
 sum(amount) as total
from
 {{ref('stg_payments')}}
group by 1
having total<0