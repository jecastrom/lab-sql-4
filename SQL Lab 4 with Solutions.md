![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | SQL Queries 4

In this lab, you will be using the [Sakila](https://dev.mysql.com/doc/sakila/en/) database of movie rentals. You have been using this database for a couple labs already, but if you need to get the data again, refer to the official [installation link](https://dev.mysql.com/doc/sakila/en/sakila-installation.html).

The database is structured as follows:
![DB schema](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/database-sakila-schema.png)

<br><br>

### Instructions

<a href="#1.-Get-film-ratings.">1. Get film ratings.</a>
2. Get release years.
3. Get all films with ARMAGEDDON in the title.
4. Get all films with APOLLO in the title
5. Get all films which title ends with APOLLO.
6. Get all films with word DATE in the title.
7. Get 10 films with the longest title.
8. Get 10 the longest films.
9. How many films include **Behind the Scenes** content?
10. List films ordered by release year and title in alphabetical order.


### Solutions:

#### 1. Get film ratings.

```sql
SELECT
    DISTINCT rating
FROM
    film;
```
   

2. Get release years.

```sql
SELECT
    DISTINCT release_year
FROM
    film;
```

3. Get all films with ARMAGEDDON in the title.
```sql
SELECT
    title
FROM
    film
WHERE
    title LIKE '%armageddon%';
```


4. Get all films with APOLLO in the title
```sql
SELECT
    title
FROM
    film
WHERE
    title REGEXP 'apollo';
```

5. Get all films which title ends with APOLLO.
```sql
SELECT
    title
FROM
    film
WHERE
    title REGEXP 'apollo$';
```

6. Get all films with word DATE in the title.
```sql
SELECT
    title
FROM
    film
WHERE
    title REGEXP 'date';
```

7. Get 10 films with the longest title.
```sql
SELECT
    title,
    length(title) AS titles_length
FROM
    film
ORDER BY
    length(title) DESC
LIMIT
    10;
```

8. Get 10 the longest films.
```sql
SELECT
    title,
    length
FROM
    film
ORDER BY
    length DESC
LIMIT
    10;
```

9.  How many films include **Behind the Scenes** content?
```sql
SELECT
    title AS 'Film Title',
    special_features AS 'Films with Behind the Scenes content'
FROM
    film
WHERE
    special_features REGEXP 'behind the scenes';
```

10. List films ordered by release year and title in alphabetical order.
````sql
SELECT
    release_year,
    title
FROM
    film
ORDER BY
    title ASC;
```


