COPY {schema}.{table}
FROM 's3://{bucketpath}'
CREDENTIALS 'aws_access_key_id={access_key};aws_secret_access_key={secret_key}'
DELIMITER '{delimiter}'
IGNOREBLANKLINES
TRUNCATECOLUMNS
FILLRECORD
ACCEPTANYDATE
REMOVEQUOTES
MAXERROR 1
IGNOREHEADER AS 1
DATEFORMAT AS 'auto'
TIMEFORMAT AS 'auto'
TRIMBLANKS
GZIP
;