With dedup_query AS (
SELECT
*,
row_number() over (partition by id order by updatedate) as dedup_flag
FROM
{{source('source', 'item')}}
)
SELECT
id, name, category,updatedate
FROM dedup_query
WHERE dedup_flag = 1