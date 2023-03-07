
{%-set payment_methods = ['credit_card', 'coupon', 'bank_transfer', 'gift_card']-%}

select order_id, 
{%for i in payment_methods -%}
sum(case when payment_method = '{{i}}' then amount else 0 end) as {{i}}_amount
{%if not loop.last -%},{%- endif %}
{%-endfor-%}
from {{ref('stg_payment')}} group by 1