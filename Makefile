.PHONY: apply destroy

apply:
	helm upgrade --install trivy-runner ./trivy_runner

destroy:
	helm uninstall trivy-runner

lint:
	helm lint trivy_runner
