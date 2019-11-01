SELECT COUNT (*) as n, id_combustivel from Abastecido 
group by id_combustivel 
order by n DESC