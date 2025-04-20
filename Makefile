## build: Build the application
.PHONY: build
build: compile
	@go build -o ./tmp/main ./cmd/app/


.PHONY: compile
compile:
	@echo -n '** Generating tailwind.css file | '
	@npx @tailwindcss/cli -i ./ui/static/css/input.css -o ./ui/static/css/tailwind.css

## run: Run the binary
.PHONY: run
run: build
	@./tmp/web



## help: print this help message
.PHONY: help
help:
	@echo 'Usage:'
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'


.PHONY: no-dirty
no-dirty:
	git diff --exit-code


migrate-up:
	goose -dir internal/db/migrations postgres "$(DB_URL)" up

migrate-down:
	goose -dir internal/db/migrations postgres "$(DB_URL)" down

migrate-status:
	goose -dir internal/db/migrations postgres "$(DB_URL)" status

