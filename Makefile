.PHONY: build-run

run-image: build-run push-run clean

build-run:
	apko build run/apko.yaml apko-run:latest apko-run.tar
	docker load -i apko-run.tar

	docker tag apko-run:latest-arm64 fidelissauro/apko-run:latest-arm64
	docker tag apko-run:latest-amd64 fidelissauro/apko-run:latest-amd64

push-run:
	docker push fidelissauro/apko-run:latest-arm64
	docker push fidelissauro/apko-run:latest-amd64

go-image: build-go push-go clean

build-go:
	apko build golang/apko.yaml apko-go:latest apko-go.tar
	docker load -i apko-go.tar

	docker tag apko-go:latest-arm64 fidelissauro/apko-go:latest-arm64
	docker tag apko-go:latest-amd64 fidelissauro/apko-go:latest-amd64

push-go:
	docker push fidelissauro/apko-go:latest-arm64
	docker push fidelissauro/apko-go:latest-amd64

jdk21-image: build-jdk21 push-jdk21 clean

build-jdk21:
	apko build openjdk21/apko.yaml apko-jdk21:latest apko-jdk21.tar
	docker load -i apko-jdk21.tar

	docker tag apko-jdk21:latest-arm64 fidelissauro/apko-jdk21:latest-arm64
	docker tag apko-jdk21:latest-amd64 fidelissauro/apko-jdk21:latest-amd64

push-jdk21:
	docker push fidelissauro/apko-jdk21:latest-arm64
	docker push fidelissauro/apko-jdk21:latest-amd64

jdk17-image: build-jdk17 push-jdk17 clean

build-jdk17:
	apko build openjdk17/apko.yaml apko-jdk17:latest apko-jdk17.tar
	docker load -i apko-jdk17.tar

	docker tag apko-jdk17:latest-arm64 fidelissauro/apko-jdk17:latest-arm64
	docker tag apko-jdk17:latest-amd64 fidelissauro/apko-jdk17:latest-amd64

push-jdk17:
	docker push fidelissauro/apko-jdk17:latest-arm64
	docker push fidelissauro/apko-jdk17:latest-amd64

tools-image: build-tools push-tools clean

build-tools:
	apko build tools/apko.yaml apko-tools:latest apko-tools.tar
	docker load -i apko-tools.tar

	docker tag apko-tools:latest-arm64 fidelissauro/apko-tools:latest-arm64
	docker tag apko-tools:latest-amd64 fidelissauro/apko-tools:latest-amd64

push-tools:
	docker push fidelissauro/apko-tools:latest-arm64
	docker push fidelissauro/apko-tools:latest-amd64

clean:
	rm *.tar
	rm sbom-*