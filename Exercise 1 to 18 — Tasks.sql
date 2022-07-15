 Exercise 1 — Tasks 
SELECT title FROM movies;
SELECT director FROM movies; 
SELECT title, director FROM movies; 
SELECT title, year FROM movies; 
SELECT * FROM movies; 

 Exercise 2 — Tasks 
SELECT id, title FROM movies WHERE id = 6;
SELECT title, year FROM movies WHERE year BETWEEN 2000 AND 2010;
SELECT title, year FROM movies WHERE year < 2000 OR year > 2010;
SELECT title, year FROM movies WHERE year <= 2003;

 Exercise 3 — Tasks 
SELECT title, director FROM movies WHERE title LIKE "Toy Story%";
SELECT title, director FROM movies WHERE director = "John Lasseter";
SELECT title, director FROM movies WHERE director != "John Lasseter";
SELECT * FROM movies WHERE title LIKE "WALL-_";

 Exercise 4 — Tasks 
SELECT DISTINCT director FROM movies ORDER BY director ASC;
SELECT title, year FROM movies ORDER BY year DESC LIMIT 4;
SELECT title FROM movies ORDER BY title ASC LIMIT 5;
SELECT title FROM movies ORDER BY title ASC LIMIT 5 OFFSET 5;

 Exercise 5 — Tasks 
 Review 1 — Tasks 
SELECT city, population FROM north_american_cities WHERE country = "Canada";
SELECT city, latitude FROM north_american_cities WHERE country = "United States" ORDER BY latitude DESC;
SELECT city, longitude FROM north_american_cities WHERE longitude < -87.629798 ORDER BY longitude ASC;
SELECT city, population FROM north_american_cities WHERE country LIKE "Mexico" ORDER BY population DESC LIMIT 2;
SELECT city, population FROM north_american_cities WHERE country LIKE "United States" ORDER BY population DESC LIMIT 2 OFFSET 2;

Exercise 6 — Tasks 
SELECT title, domestic_sales, international_sales FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id;
SELECT title, domestic_sales, international_sales FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id WHERE international_sales > domestic_sales;
SELECT title, rating FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id ORDER BY rating DESC;


 Exercise 7 — Tasks 
SELECT DISTINCT building FROM employees;
SELECT * FROM buildings;
SELECT DISTINCT building_name, role FROM buildings LEFT JOIN employees ON building_name = building;


 Exercise 8 — Tasks 
SELECT name, role FROM employees WHERE building IS NULL;
SELECT DISTINCT building_name FROM buildings LEFT JOIN employees ON building_name = building WHERE role IS NULL;

 Exercise 9 — Tasks 
SELECT title, (domestic_sales + international_sales) / 1000000 AS gross_sales_millions FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id;
SELECT title, rating * 10 AS rating_percent FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id;
SELECT title, year FROM movies WHERE year % 2 = 0;

 Exercise 10 — Tasks 
SELECT MAX(years_employed) as Max_years_employed FROM employees;
SELECT role, AVG(years_employed) as Average_years_employed FROM employees GROUP BY role;
SELECT building, SUM(years_employed) as Total_years_employed FROM employees GROUP BY building;

 Exercise 11— Tasks 
SELECT role, COUNT(*) as Number_of_artists FROM employees WHERE role = "Artist";
SELECT role, COUNT(*) FROM employees GROUP BY role;
SELECT role, SUM(years_employed) FROM employees GROUP BY role HAVING role = "Engineer";

 Exercise 12— Tasks 
SELECT director, COUNT(id) as Num_movies_directed FROM movies GROUP BY director;
SELECT director, SUM(domestic_sales + international_sales) as Cumulative_sales_from_all_movies FROM movies INNER JOIN boxoffice ON movies.id = boxoffice.movie_id GROUP BY director;

 Exercise 13— Tasks 
INSERT INTO movies VALUES (4, "Toy Story 4", "El Directore", 2015, 90);
INSERT INTO boxoffice VALUES (4, 8.7, 340000000, 270000000);

 Exercise 14— Tasks 
UPDATE movies SET director = "John Lasseter" WHERE id = 2;
UPDATE movies SET year = 1999 WHERE id = 3;
UPDATE movies SET title = "Toy Story 3", director = "Lee Unkrich" WHERE id = 11;

 Exercise 15— Tasks 
DELETE FROM movies where year < 2005;
DELETE FROM movies where director = "Andrew Stanton";

 Exercise 16— Tasks 
CREATE TABLE Database ( Name TEXT, Version FLOAT, Download_count INTEGER );

 Exercise 17— Tasks 
ALTER TABLE Movies ADD COLUMN Aspect_ratio FLOAT DEFAULT 2.39;
ALTER TABLE Movies ADD COLUMN Language TEXT DEFAULT "English";

 Exercise 18— Tasks 
 DROP TABLE Movies;
DROP TABLE BoxOffice;
