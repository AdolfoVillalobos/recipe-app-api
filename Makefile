SHELL := /usr/local/bin/zsh
migrate:
	docker-compose run --rm app sh -c "python manage.py migrate"
migrations:
	docker-compose run --rm app sh -c "python manage.py makemigrations"
test:
	docker-compose run --rm app sh -c "python manage.py test && flake8"
up:
	docker-compose up
