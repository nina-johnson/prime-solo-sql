-- 1. How do you get all users from Chicago?
SELECT * FROM "accounts";

-- 2. How do you get all users with usernames that contain the letter a?
SELECT * FROM "accounts" WHERE "username" ILIKE '%a%';

-- 3. The bank is giving a new customer bonus! 
-- How do you update all records with an account balance of 0.00 and a transactions_attempted of 0? 
-- Give them a new account balance of 10.00.
SELECT * FROM "accounts" WHERE "account_balance" = 0.00;
UPDATE "accounts" SET "account_balance" = 10.00 WHERE "user_id" = 5;

-- 4. How do you select all users that have attempted 9 or more transactions?
SELECT * FROM "accounts" WHERE "transactions_attempted" >= 9;

-- 5. How do you get the username and account balance of the 3 users with the highest balances, 
-- sorted highest to lowest balance? NOTE: Research LIMIT
SELECT * FROM "accounts" ORDER BY "account_balance" DESC LIMIT 3;

-- 6. How do you get the username and account balance of the 3 users with the lowest balances, 
-- sorted lowest to highest balance?
SELECT * FROM "accounts" ORDER BY "account_balance" ASC LIMIT 3;

-- 7. How do you get all users with account balances that are more than $100?
SELECT * FROM "accounts" WHERE "account_balance" > 100.00;

-- 8. How do you add a new account?
INSERT INTO "accounts" ("username", "city", "transactions_completed", "transactions_attempted", "account_balance")
VALUES ('nina', 'st paul', 2, 2, 20.00);

-- 9. The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: 
-- How do you delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
SELECT * FROM "accounts" WHERE ("city" = 'miami' OR "city" = 'phoenix') AND "transactions_completed" < 5;
DELETE FROM "accounts" WHERE ("city" = 'miami' OR "city" = 'phoenix') AND "transactions_completed" < 5;




-- Stretch Goal Questions (word problems)
-- 1. Anthony moved to Santa Fe.
-- 2. Grace closed her account.
-- 3. Travis made a withdrawl of $20,000. What's their new balance? NOTE: Research RETURNING
-- 4. The Bank needs to track last names. NOTE: Research ALTER TABLE https://www.postgresql.org/docs/10/static/sql-altertable.html
