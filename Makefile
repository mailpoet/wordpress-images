build:
	docker build -t "mailpoet/wordpress:5.6.30_$(version)" 5.6.30
	docker build -t "mailpoet/wordpress:5.6-cli_$(version)" 5.6-cli
	docker build -t "mailpoet/wordpress:7.1_$(version)" 7.1
	docker build -t "mailpoet/wordpress:wp-4.9.5_$(version)" wp-4.9.5

push:
	docker push mailpoet/wordpress:5.6.30_$(version)
	docker push mailpoet/wordpress:5.6-cli_$(version)
	docker push mailpoet/wordpress:7.1_$(version)
	docker push mailpoet/wordpress:wp-4.9.5_$(version)
