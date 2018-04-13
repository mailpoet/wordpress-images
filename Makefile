build:
	docker build -t "mailpoet/wordpress:5.6.30" 5.6.30
	docker build -t "mailpoet/wordpress:7.1" 7.1

push:
	docker push mailpoet/wordpress:5.6.30
	docker push mailpoet/wordpress:7.1
