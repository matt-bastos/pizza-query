-- Databricks notebook source
select count (*),
       count (idPedido)
from silver.pizza_query.pedido


-- COMMAND ----------

select descUF, 
       count(*) as qtdePedidos


from silver.pizza_query.pedido
group by descUF
order by qtdePedidos desc
limit 6

-- COMMAND ----------

select descUF,
        flKetchup,
        count(*)
          
from silver.pizza_query.pedido

group by descUF, flKetchup
order by descUF, flKetchup

