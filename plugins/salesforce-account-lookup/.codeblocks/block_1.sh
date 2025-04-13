SELECT
 Name,
 Type,
 Description,
 Id,
 Website,
 Owner.Name
FROM
 Account
WHERE
 Name LIKE '%25{{query}}%25'
