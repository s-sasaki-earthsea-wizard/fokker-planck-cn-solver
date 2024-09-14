# -------------------
# Docker
# -------------------
# Set a default valuables for docker 
IMAGE_NAME = fokker-planck-cn-solver
HOST_PROJECTS_DIR := $(shell pwd)
CONTAINER_PROJECTS_DIR := /workspace/projects/${IMAGE_NAME}

# Build docker image
docker-build:
	docker build -t $(IMAGE_NAME) .

# Run docker container
docker-run:
	docker run --rm -it -v $(HOST_PROJECTS_DIR):$(CONTAINER_PROJECTS_DIR) $(IMAGE_NAME)

# -------------------
# Development
# -------------------
# Compile the project
compile:
	mkdir -p build && cd build && cmake .. && make

# Run tests
test:
	cd build && ctest

# Clean build files
clean:
	rm -rf build

# Format code using clang-format
format:
	find . -iname *.hpp -o -iname *.cpp | xargs clang-format -i

# Generate project summary
summary:
	python generate_project_summary.py

# -------------------
# Utility
# -------------------
# Show help
help:
	@echo "Available commands:"
	@echo "  docker-build  : Build the Docker image"
	@echo "  docker-run    : Run the Docker container"
	@echo "  compile       : Compile the project"
	@echo "  test          : Run tests"
	@echo "  clean         : Remove build files"
	@echo "  format        : Format code using clang-format"

.PHONY: docker-build docker-run compile test clean format help summary