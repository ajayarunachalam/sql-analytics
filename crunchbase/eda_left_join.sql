-- left join
SELECT c.permalink AS company_permalink,
  c.name AS company_name,
  a.company_permalink AS acquisitions_permalink,
  a.acquired_at AS acquired_date
FROM tutorial.crunchbase_companies c
LEFT JOIN tutorial.crunchbase_acquisitions a
ON c.permalink = a.company_permalink