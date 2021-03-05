# Nomad Job Repo in Django

Just a demo app

## Local Development

```
docker run --name nomadrepo -e POSTGRES_PASSWORD=nomadrepo9000 -p 5432:5432 -d postgres:13
PGPASSWORD=nomadrepo9000 psql -h localhost -U postgres -c 'CREATE DATABASE nomadrepo'

# Assuming a local checkout of this repo in a venv
cd nomadrepo
python manage.py migrate
python manage.py runserver
```
