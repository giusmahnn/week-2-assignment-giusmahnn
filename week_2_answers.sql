/* Part One */
SELECT
	* 
FROM
	expense_tracker.expenses;

SELECT 
	amount, category 
FROM 
	expense_tracker.expenses;

SELECT 
	* 
FROM 
	expense_tracker.expenses 
WHERE 
	DATE(date) BETWEEN 2021-01-01 AND 2024-12-15;

/* Part Two */
SELECT * FROM expense_tracker.expenses WHERE category='Entertainment';

SELECT * FROM expense_tracker.expenses WHERE amount >=50;

SELECT * FROM expense_tracker.expenses WHERE amount >=100 AND category='Transportation';

SELECT * FROM expense_tracker.expenses WHERE category ='Other' OR category='Food';

SELECT * FROM expense_tracker.expenses WHERE category <> 'Rent';

/* Part Three */
SELECT * FROM expense_tracker.expenses ORDER BY amount DESC;

SELECT * FROM expense_tracker.expenses ORDER BY DATE(date) DESC, category ASC;

CREATE TABLE IF NOT EXISTS expense_tracker.income (
  INCOME_id INT PRIMARY KEY AUTO_INCREMENT,
  amount DECIMAL(10,2) NOT NULL,
  date DATE NOT NULL,
  source VARCHAR(50) NOT NULL
);

/* Part four */
ALTER TABLE expense_tracker.income ADD COLUMN category VARCHAR(50);
ALTER TABLE expense_tracker.income DROP COLUMN source;
DROP TABLE expense_tracker.income;

