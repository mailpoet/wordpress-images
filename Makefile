build:
	docker build -t "mailpoet/wordpress:5.6.38_$(version)" 5.6.38
	docker build -t "mailpoet/wordpress:5.6-cli_$(version)" 5.6-cli
	docker build -t "mailpoet/wordpress:7.1_$(version)" 7.1
	docker build -t "mailpoet/wordpress:wp-4.9.5_$(version)" wp-4.9.5
	docker build -t "mailpoet/wordpress:wp-5.0_$(version)" wp-5.0
	docker build -t "mailpoet/wordpress:dev_$(version)" dev

push:
	docker push mailpoet/wordpress:5.6.38_$(version)
	docker push mailpoet/wordpress:5.6-cli_$(version)
	docker push mailpoet/wordpress:7.1_$(version)
	docker push mailpoet/wordpress:wp-4.9.5_$(version)
	docker push mailpoet/wordpress:wp-5.0_$(version)
	docker push mailpoet/wordpress:dev_$(version)
