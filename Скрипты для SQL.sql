-- Запрос для подсчета суммы по полу
select sum(balance), sex from clients group by sex 

-- Запрос для подсчета суммы и количества клиентов по полу
select count(balance), sum(balance), sex from clients group by sex

-- Запрос для подсчета удельного баланса на человека по полу
select sum(balance)/count(balance) as "Удельно на человека", sex from clients group by sex

-- Запрос для подсчета клиентов старше 50 по полу
select count(sex) as "Количество", sex as "Пол" from clients where date_of_birth >= '1973-12-01' group by sex

-- Запрос для вывода 10 самых старых клиентов
select first_name, last_name,age(current_date, date_of_birth) as age, sex from clients order by date_of_birth asc  limit 10
