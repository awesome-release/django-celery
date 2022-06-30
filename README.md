![Click to view on Youtube](celery_progress_demo.png)

## Pull request demo

Hello world!

# Architecture

![Architecture Diagram](architecture_diagram.png)

This [demo](https://github.com/oisinBates/celery_progress_demo) was created by [@oisinBates](https://github.com/oisinBates) to orginally showcase the [celery_progress](https://github.com/czue/celery-progress)
package. Here we have modified it to run fully in docker to be used in [Release](https://releasehub.com/).

# Getting Started

## Environment Variables

Generate an API key at [api.nasa.gov](https://api.nasa.gov/) and add it to a `.env` file in the root directory as `NASA_API_KEY` (see [.env.example](/.env.example)).

# Running the Application

## Docker Method

Simply run the following in a terminal:

```bash
docker-compose up -d
```

After that, visit `localhost:8000` to see the app running!

## Running manually

Start RabbitMQ and Redis on Docker

```bash
docker run -d -p 5672:5672 rabbitmq
```

```bash
docker run -d -p 6379:6379 redis
```

From within this repo's root directory, run the following commands in order to install this project's dependencies in a [virtual environment](https://pipenv.pypa.io/en/latest/) and run a Django web server:

```bash
pip install --user pipenv
```

```bash
pipenv shell
```

```bash
pipenv install
```

```bash
python3 manage.py runserver
```

Open a second terminal window and run the following:

```bash
python3 -m celery -A demo_project worker -l info --concurrency=8
```
