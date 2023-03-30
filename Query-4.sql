SELECT 
  CASE 
    WHEN age < 18 THEN 'Under 18'
    WHEN age >= 18 AND age < 25 THEN '18-24'
    WHEN age >= 25 AND age < 35 THEN '25-34'
    WHEN age >= 35 AND age < 45 THEN '35-44'
    WHEN age >= 45 AND age < 55 THEN '45-54'
    ELSE '55+' 
  END AS age_group,
  SUM(quantity * price) AS total_revenue
FROM customer
GROUP BY age_group;
