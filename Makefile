PHORONIX_VERSION?=6.2.2
DOCKERORG=pimsubc

bench_build:
	@docker build -t $(DOCKERORG)/docker-phoronix:$(PHORONIX_VERSION) --build-arg PHORONIX_VERSION=$(PHORONIX_VERSION) .

bench:
	@docker run --rm -i --name docker-phoronix $(DOCKERORG)/docker-phoronix
