# Run project
```
$docker container run --rm  --name db \
-e POSTGRES_USER="postgres" \
-e POSTGRES_PASSWORD="password" \
-e POSTGRES_DB="sample" \
-p 5432:5432 \
-v $(pwd)/src/main/resources/schema.sql:/docker-entrypoint-initdb.d/seed.sql \
postgres
```