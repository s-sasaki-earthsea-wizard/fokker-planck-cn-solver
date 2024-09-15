# Set the base image as the official Debian Bullseye slim image
FROM debian:bullseye-20240904-slim

# Set the project name as environment variables
ENV PROJECT_NAME=fokker-planck-cn-solver

# Create the workspace directory and set it as the working directory
RUN mkdir -p /workspace/projects/${PROJECT_NAME}
WORKDIR /workspace/projects/${PROJECT_NAME}

# Install pip3
# Update and install necessary packages
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    gcc \
    g++ \
    gdb \
    libeigen3-dev \
    clang \
    clang-format \ 
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Allow the Git directory to be recognized as safe
RUN git config --global --add safe.directory /workspace/projects/${PROJECT_NAME}

# Default command when the container starts
CMD ["bash"]
