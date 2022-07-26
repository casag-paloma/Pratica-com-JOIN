QUEESTÃO 1)
SELECT 
u.id, 
u.name, 
c.name as city 
FROM users u 
JOIN cities c ON u."cityId" = c.id 
WHERE c.name = 'Rio de Janeiro' ORDER BY id;  


QUESTÃO 2)
SELECT 
t.id,
u1.name AS writer,
u2.name AS recipient,
t.message
FROM testimonials t
JOIN users AS u1 ON t."writerId" = u1.id 
JOIN users AS u2 ON t."recipientId" = u2.id ORDER BY id;  


QUESTÃO 3)
SELECT
e."userId" AS id,
u.name AS name,
c.name AS course,
s.name AS school,
e."endDate" 
FROM educations e
JOIN users u ON e."userId" = u.id
JOIN courses c ON e."courseId" = c.id
JOIN schools s ON e."schoolId" = s.id
WHERE e."userId" = 30 AND e.status = 'finished'; 


QUESTÃO 4)
SELECT 
u.id,
u.name,
r.name AS role,
c.name AS company,
e."startDate" 
FROM experiences e
JOIN users u ON e."userId" = u.id
JOIN roles r ON e."roleId" = r.id
JOIN companies c ON e."companyId" = c.id
WHERE e."userId" = 50 AND e."endDate" IS NULL;  


