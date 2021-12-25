/*
 Lab SQL Queries 4
 Jorge Castro DAPT NOV2021
 */
/*
 1) Get film ratings.
 */
SELECT
    DISTINCT rating
FROM
    film;
/*
 2) Get release years.
 */
SELECT
    DISTINCT release_year
FROM
    film;
/*
 3) Get all films with ARMAGEDDON in the title.
 */
SELECT
    title
FROM
    film
WHERE
    title LIKE '%armageddon%';
/*
 4) Get all films with APOLLO in the title
 */
SELECT
    title
FROM
    film
WHERE
    title REGEXP 'apollo';
/*
 5) Get all films which title ends with APOLLO.
 */
SELECT
    title
FROM
    film
WHERE
    title REGEXP 'apollo$';
/*
 6) Get all films with word DATE in the title.
 */
SELECT
    title
FROM
    film
WHERE
    title REGEXP 'date';
/*
 7) Get 10 films with the longest title.
 */
SELECT
    title,
    length(title) AS titles_length
FROM
    film
ORDER BY
    length(title) DESC
LIMIT
    10;
/*
 8) Get 10 the longest films.
 */
SELECT
    title,
    length
FROM
    film
ORDER BY
    length DESC
LIMIT
    10;
/*
 9) How many films include Behind the Scenes content?
 */
SELECT
    title AS 'Film Title',
    special_features AS 'Films with Behind the Scenes content'
FROM
    film
WHERE
    special_features REGEXP 'behind the scenes';
/*
 10) List films ordered by release year and title in alphabetical order.
 */
SELECT
    release_year,
    title
FROM
    film
ORDER BY
    title ASC;