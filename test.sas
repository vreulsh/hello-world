a is de dataset met 10 records, b die met 1 record
zorg dat je in b een variabele extrab hebt die niet in a zit en die de waarde 99 heeft (of iets anders, maar dan moet je de code aanpassen)

proc sql;
 create table combi(where extrab ne 99) as
  select a.* from a 
           left join
                  b
     on a.v1=b.v1 and a.v2=b.v2 and a.v3=b.v3;    
quit;
