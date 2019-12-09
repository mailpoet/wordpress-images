build:
	docker build -t "mailpoet/wordpress:5.6_$(version)" 5.6
	docker build -t "mailpoet/wordpress:5.6-cli_$(version)" 5.6-cli
	docker build -t "mailpoet/wordpress:7.1_$(version)" 7.1
	docker build -t "mailpoet/wordpress:7.3_$(version)" 7.3
	docker build -t "mailpoet/wordpress:wp-4.9_php5.6_$(version)" wp-4.9/php5.6
	docker build -t "mailpoet/wordpress:wp-4.9_php7.2_$(version)" wp-4.9/php7.2
	docker build -t "mailpoet/wordpress:wp-5.0_$(version)" wp-5.0
	docker build -t "mailpoet/wordpress:wp-5.3_$(version)" wp-5.3
	docker build -t "mailpoet/wordpress:dev_$(version)" dev

push:
	docker push mailpoet/wordpress:5.6_$(version)
	docker push mailpoet/wordpress:5.6-cli_$(version)
	docker push mailpoet/wordpress:7.1_$(version)
	docker push mailpoet/wordpress:7.3_$(version)
	docker push mailpoet/wordpress:wp-4.9_php5.6_$(version)
	docker push mailpoet/wordpress:wp-4.9_php7.2_$(version)
	docker push mailpoet/wordpress:wp-5.0_$(version)
	docker push mailpoet/wordpress:wp-5.3_$(version)
	docker push mailpoet/wordpress:dev_$(version)
