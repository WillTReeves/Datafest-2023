SELECT COUNT(*)
FROM ABA.attorneys
INNER JOIN ABA.timeentries
ON ABA.attorneys.attorneyuno = ABA.timeentries.attorneyuno;


Select  Count(subcat.subcategory), subcat.subcategory
FROM ABA.subcat
GROUP BY  cat.subcategory;


SELECT COUNT(ABA.cat.category), ABA.cat.category, ABA.quesions.subcategory
FROM ABA.quesions
INNER JOIN ABA.cat
ON ABA.quesions.category = ABA.cat.categoryuno
WHERE ABA.quesions.stateabbr = 'AZ'
GROUP BY ABA.cat.category, ABA.quesions.subcategory
ORDER BY COUNT(ABA.cat.category);


SELECT COUNT(ABA.cat.category), ABA.cat.category, ABA.quesions.subcategory
FROM ABA.quesions
INNER JOIN ABA.cat
ON ABA.quesions.category = ABA.cat.categoryuno
WHERE ABA.quesions.stateabbr = 'SC'
GROUP BY ABA.cat.category, ABA.quesions.subcategory
ORDER BY COUNT(ABA.cat.category);


SELECT COUNT(ABA.cat.category), ABA.cat.category, ABA.clients.gender
FROM ABA.quesions
INNER JOIN ABA.cat
ON ABA.quesions.category = ABA.cat.categoryuno
INNER JOIN ABA.clients
ON ABA.quesions.askedclientuno = ABA.clients.clientuno
WHERE ABA.quesions.stateabbr = 'AZ' AND ABA.clients.gender IS NOT NULL
GROUP BY ABA.cat.category, ABA.clients.gender
ORDER BY COUNT(ABA.cat.category) DESC;


SELECT COUNT(ABA.cat.category), ABA.cat.category, ABA.clients.gender
FROM ABA.quesions
INNER JOIN ABA.cat
ON ABA.quesions.category = ABA.cat.categoryuno
INNER JOIN ABA.clients
ON ABA.quesions.askedclientuno = ABA.clients.clientuno
WHERE ABA.quesions.stateabbr = 'SC' AND ABA.clients.gender IS NOT NULL
GROUP BY ABA.cat.category, ABA.clients.gender
ORDER BY COUNT(ABA.cat.category) DESC;