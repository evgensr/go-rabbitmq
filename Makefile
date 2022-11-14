get-rabbitmq:
	docker pull rabbitmq

rab:
	docker run --restart always -d --network host rabbitmq
rabbitmq:
	docker run -d --name rabbitmq-demo -p 5672:5672 -p 5673:5673 -p 15672:15672 rabbitmq:3.8-management

rabbitmq-open:
	open http://localhost:15672/