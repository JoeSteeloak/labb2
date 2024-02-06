Alla SQL-filer tillhör föreläsningen om SQL och är anpassade till
Mysql /MariaDB.

Du skall alltid försöka strukturera upp din kod i ngn. form.
I mappen finner du 5 SQL-filer. Dessa filer kan användas
separat var för sig beroende på var i implementering du befinner dig.
Om du exempelvis just börjar med att implementera din databas,
kör du koden i den ordning som anges nedan:


1) Titta igenom Configurations.sql för att se ifall du behöver ngt. därifrån

2) Drops.sql

3) Create_tables.sql

4) Constraints.sql

5) Inserts.sql

6) Använd queries.sql för att dokumentera dina frågor mot databasen.


I övriga fall använder filen run_all.sql

Kör enskild SQL-fil med "source":

MariaDB [none]> source run_all.sql

