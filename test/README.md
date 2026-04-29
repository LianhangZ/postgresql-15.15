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

```
psql beer -f test/show_schema_columns1.sql
  relname  | attname |   typname   | atttypmod 
-----------+---------+-------------+-----------
 bars      | name    | barname     |        -1
 bars      | addr    | varchar     |        24
 bars      | license | int4        |        -1
 beers     | name    | barname     |        -1
 beers     | manf    | varchar     |        24
 drinkers  | name    | drinkername |        -1
 drinkers  | addr    | varchar     |        34
 drinkers  | phone   | bpchar      |        14
 frequents | drinker | drinkername |        -1
 frequents | bar     | barname     |        -1
 likes     | drinker | drinkername |        -1
 likes     | beer    | beername    |        -1
 sells     | bar     | barname     |        -1
 sells     | beer    | beername    |        -1
 sells     | price   | float8      |        -1
(15 rows)

```
