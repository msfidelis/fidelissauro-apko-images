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

clean:
	rm *.tar
	rm sbom-*