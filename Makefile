build:
	docker build -t "mailpoet/wordpress:7.0_$(version)" 7.0
	docker build -t "mailpoet/wordpress:7.1_$(version)" 7.1
	docker build -t "mailpoet/wordpress:7.3_$(version)" 7.3
	docker build -t "mailpoet/wordpress:7.4_$(version)" 7.4
	docker build -t "mailpoet/wordpress:wp-5.0_php7.0_$(version)" wp-5.0/php7.0
	docker build -t "mailpoet/wordpress:wp-5.2_php7.3_$(version)" wp-5.2/php7.3
	docker build -t "mailpoet/wordpress:wp-5.3_php7.3_$(version)" wp-5.3/php7.3
	docker build -t "mailpoet/wordpress:wp-5.3_php7.4_$(version)" wp-5.3/php7.4
	docker build -t "mailpoet/wordpress:wp-5.4_php7.3_$(version)" wp-5.4/php7.3
	docker build -t "mailpoet/wordpress:wp-5.4_php7.4_$(version)" wp-5.4/php7.4
	docker build -t "mailpoet/wordpress:wp-5.5_php7.4_$(version)" wp-5.5/php7.4
	docker build -t "mailpoet/wordpress:dev_$(version)" dev

push:
	docker push mailpoet/wordpress:7.0_$(version)
	docker push mailpoet/wordpress:7.1_$(version)
	docker push mailpoet/wordpress:7.3_$(version)
	docker push mailpoet/wordpress:7.4_$(version)
	docker push mailpoet/wordpress:wp-5.0_php7.0_$(version)
	docker push mailpoet/wordpress:wp-5.2_php7.3_$(version)
	docker push mailpoet/wordpress:wp-5.3_php7.3_$(version)
	docker push mailpoet/wordpress:wp-5.3_php7.4_$(version)
	docker push mailpoet/wordpress:wp-5.4_php7.3_$(version)
	docker push mailpoet/wordpress:wp-5.4_php7.4_$(version)
	docker push mailpoet/wordpress:wp-5.5_php7.4_$(version)
	docker push mailpoet/wordpress:dev_$(version)
