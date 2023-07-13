# Twig Challenge

## Description

The `./main.sh` script will clone the three repositories (emails, payments and emails services) then build and run the docker containers.

You can access the services on the following ports:
- Emails service: `3000`
- Payments service: `3001`
- Emails service: `3003`

It will also run MongoDB and RabbitMQ containers on ports 27017 and 5672 respectively.

Swagger documentation for the services can be found on the following URLs:
- (Orders service)[https://github.com/phr3nzy/twig-challenge-orders]: http://localhost:3000/documentation
- (Payments service)[https://github.com/phr3nzy/twig-challenge-payments]: http://localhost:3001/documentation
- (Emails service)[https://github.com/phr3nzy/twig-challenge-emails]: http://localhost:3003/documentation

or, you can use `curl` to test the services:

```bash
curl --request POST \
  --url http://localhost:3000/orders \
  --header 'Content-Type: application/json' \
  --data '{
  "email": "some_random_email@gmail.com",
  "amount": 10,
  "type": "shoes"
}'
```

There is also a delay on the payments and emails services to simulate a real world scenario.

## Requirements

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Usage

```bash
# Set the script as executable
$ chmod -x ./main.sh

# Run the script
$ ./main.sh
```