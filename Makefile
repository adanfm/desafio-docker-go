build-image:
	docker build -t adanfm/codeeducation .

push-image:
	docker push adanfm/codeeducation

run:
	docker run adanfm/codeeducation