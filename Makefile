build:
	docker build -t "mailpoet/wordpress:5.6.30" 5.6.30
	docker build -t "mailpoet/wordpress:5.6-cli" 5.6-cli
	docker build -t "mailpoet/wordpress:7.1" 7.1
	docker build -t "mailpoet/wordpress:wp-4.9.5" wp-4.9.5

push:
	docker push mailpoet/wordpress:5.6.30
	docker push mailpoet/wordpress:5.6-cli
	docker push mailpoet/wordpress:7.1
	docker push mailpoet/wordpress:wp-4.9.5
