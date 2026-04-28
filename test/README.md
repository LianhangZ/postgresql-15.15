# P01

```
createdb beer
psql beer -f ~/postgresql-15.15/test/beer.dump 
psql beer
```

```
select count(*) from beers;
\d
\q
```

# P02

```
psql -l
psql beer -f test/show_schema_columns.sql

  relname  | attname 
-----------+---------
 bars      | name
 bars      | addr
 bars      | license
 beers     | name
 beers     | manf
 drinkers  | name
 drinkers  | addr
 drinkers  | phone
 frequents | drinker
 frequents | bar
 likes     | drinker
 likes     | beer
 sells     | bar
 sells     | beer
 sells     | price
(15 rows)

```
