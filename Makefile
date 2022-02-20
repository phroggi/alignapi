GO           ?= go
PKGS         ?= ./...

.PHONY: lint
lint:
		@echo "Running linter. . ."
		golangci-lint run --config ./.golangci.yml $(PKGS)
		yarn prettier --write **/*.gql

.PHONY: vet
vet:
		@echo "Vetting. . ."
		$(GO) vet $(PKGS)