{% snapshot orders_scd %}

{{
    config(
      target_database='amevi',
      target_schema='staging',
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at',
	  
	  as_columnstore= false
    )
}}

select * from source.orders

{% endsnapshot %}