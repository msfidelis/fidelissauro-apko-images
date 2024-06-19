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