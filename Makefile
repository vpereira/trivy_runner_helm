.PHONY: apply destroy

apply:
	@echo "Deploying from directory: $(shell pwd)"
	helm upgrade --install trivy-runner ./trivy_runner --set volumes[0].hostPath.path=$(shell pwd)/trivy_runner/data

destroy:
	helm uninstall trivy-runner

lint:
	helm lint trivy_runner
