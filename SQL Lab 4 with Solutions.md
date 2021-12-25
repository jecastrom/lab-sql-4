![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab SQL Queries 4     
### Jorge Castro DAPT NOV2021
### Lab with solutions


In this lab, you will be using the [Sakila](https://dev.mysql.com/doc/sakila/en/) database of movie rentals. You have been using this database for a couple labs already, but if you need to get the data again, refer to the official [installation link](https://dev.mysql.com/doc/sakila/en/sakila-installation.html).

The database is structured as follows:

![dvdrental](https://user-images.githubusercontent.com/63274055/147393369-d19b9c63-4080-40b9-afd3-ce108a62e385.png)

<br></br>

### Instructions (Go to)
- <a href="#Get-film-ratings">Get film ratings</a>
- <a href="#Get-release-years">Get release years</a>
- <a href="#Get-all-films-with-ARMAGEDDON-in-the-title">Get all films with ARMAGEDDON in the title</a>
- <a href="#Get-all-films-with-APOLLO-in-the-title">Get all films with APOLLO in the title</a>
- <a href="#Get-all-films-which-title-ends-with-APOLLO">Get all films which title ends with APOLLO</a>
- <a href="#Get-all-films-with-word-DATE-in-the-title">Get all films with word DATE in the title</a>
- <a href="#Get-10-films-with-the-longest-title">Get 10 films with the longest title</a>
- <a href="#Get-10-the-longest-films">Get 10 the longest films</a>
- <a href="#How-many-films-include-Behind-the-Scenes-content">How many films include Behind the Scenes content</a>
- <a href="#List-films-ordered-by-release-year-and-title-in-alphabetical-order">List films ordered by release year and title in alphabetical order</a>



### Solutions:

 1. #### Get film ratings

```sql
SELECT
    DISTINCT rating
FROM
    film;
```

<img src="https://user-images.githubusercontent.com/63274055/147393393-bd3f877e-9fc6-43aa-a67a-ba8db45b3146.png" alt="Drawing" style="width: 400px;"/>

<a href="#Lab-SQL-Queries-4">Go to top</a>
   

2. #### Get release years

```sql
SELECT
    DISTINCT release_year
FROM
    film;
```


<img src="https://user-images.githubusercontent.com/63274055/147393402-1c9903ae-66db-4eea-abfd-7b91f511fa8e.png" alt="Drawing" style="width: 350px;"/>

<a href="#Lab-SQL-Queries-4">Go to top</a>

3. #### Get all films with ARMAGEDDON in the title.
```sql
SELECT
    title
FROM
    film
WHERE
    title LIKE '%armageddon%';
```

<img src="https://user-images.githubusercontent.com/63274055/147393411-13ba8c52-80dc-4ac2-9b2a-1c442a3b80b1.png" alt="Drawing" style="width: 350px;"/>

<a href="#Lab-SQL-Queries-4">Go to top</a>


4. #### Get all films with APOLLO in the title
```sql
SELECT
    title
FROM
    film
WHERE
    title REGEXP 'apollo';
```

<img src="https://user-images.githubusercontent.com/63274055/147393416-e629a59a-a24c-472c-aa96-a55d02feb75e.png" alt="Drawing" style="width: 350px;"/>

<a href="#Lab-SQL-Queries-4">Go to top</a>

5. #### Get all films which title ends with APOLLO
```sql
SELECT
    title
FROM
    film
WHERE
    title REGEXP 'apollo$';
```

<img src="https://user-images.githubusercontent.com/63274055/147393422-b87771c1-d0c3-42ae-9569-85982ec803de.png" alt="Drawing" style="width: 350px;"/>

<a href="#Lab-SQL-Queries-4">Go to top</a>

6. #### Get all films with word DATE in the title
```sql
SELECT
    title
FROM
    film
WHERE
    title REGEXP 'date';
```

<img src="https://user-images.githubusercontent.com/63274055/147393430-065a6097-a9eb-406b-a999-b525eb991920.png" alt="Drawing" style="width: 350px;"/>

<a href="#Lab-SQL-Queries-4">Go to top</a>

7. #### Get 10 films with the longest title
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

<img src="https://user-images.githubusercontent.com/63274055/147393444-d073f5ac-6582-4512-8805-4796d1cf96ea.png" alt="Drawing" style="width: 350px;"/>

<a href="#Lab-SQL-Queries-4">Go to top</a>

8. #### Get 10 the longest films
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

<img src="https://user-images.githubusercontent.com/63274055/147393454-fc041d5f-a095-4c66-bc5c-6f5f7492eac7.png" alt="Drawing" style="width: 350px;"/>

<a href="#Lab-SQL-Queries-4">Go to top</a>

9.  #### How many films include Behind the Scenes content
```sql
SELECT
    title AS 'Film Title',
    special_features AS 'Films with Behind the Scenes content'
FROM
    film
WHERE
    special_features REGEXP 'behind the scenes';
```


<img src="https://user-images.githubusercontent.com/63274055/147393470-27e339a1-1342-4226-8c9c-1c9c5386cd94.png" alt="Drawing" style="width: 350px;"/>

<a href="#Lab-SQL-Queries-4">Go to top</a>

10.  #### List films ordered by release year and title in alphabetical order
```sql
SELECT
    release_year,
    title
FROM
    film
ORDER BY
    title ASC;
```


<img src="https://user-images.githubusercontent.com/63274055/147393487-d814a396-0ac6-4ef7-9bc6-bc80001b1e05.png" alt="Drawing" style="width: 350px;"/>


<a href="#Lab-SQL-Queries-4">Go to top</a>


