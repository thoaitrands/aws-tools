## Create MYSQL

### 1.MANUALLY Create new docker image mysql

```
docker network create aws-training
```
```
docker run -d --name mysql-server -p 3306:3306 --network aws-training -e "MYSQL_ROOT_PASSWORD=mysql" mysql
```

### 2. Create table in mysql
`docker exec -it mysql-server mysql -u root -p mysql`

```
    create database testdb;

    use testdb;

    CREATE TABLE posts (
        id varchar(255),
        title varchar(255),
        content varchar(255),
        published boolean,
        tags varchar(255)
    );
```

### 2.DOCKER-COMPOSE
```
    docker compose up --build
```

### 1.KUBENETES
```
    kubectl apply -f database/mysql-configmap.yml
    kubectl apply -f database/mysql-init-configmap.yml
    kubectl apply -f database/secrets.yml
    kubectl apply -f database/mysql-deployment.yml
```