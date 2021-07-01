SHELL := /usr/local/bin/zsh
migration:
	docker-compose run --rm app sh -c "python manage.py makemigrations core"
test:
	docker-compose run --rm app sh -c "python manage.py test && flake8"
up:
	docker-compose up
