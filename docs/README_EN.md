# ComfyUI Docker Container
This project provides configuration files and scripts to run [ComfyUI](https://github.com/comfyanonymous/ComfyUI) within a Docker container.

## Overview
The repository leverages Docker Compose and a multi-stage Dockerfile to efficiently build and run ComfyUI. It is designed to simplify deployment by automating dependency installation and container configuration.

## Files
- **docker-compose.yaml**  
Contains settings for building and running the Docker container.
- **Dockerfile**  
A multi-stage Dockerfile with a builder stage for installing Python, CUDA, and other dependencies, and a runtime stage for executing the application.
- **entrypoint.sh**  
A startup script that clones the ComfyUI repository (if not already present), installs required Python packages, and launches the Web UI.

## Usage
1. Clone the repository:
    ```bash
    git clone <repository URL>
    cd <repository directory>
    ```
2. Build and start the container using Docker Compose:
    ```bash
    docker-compose up -d --build
    ```
3. Open your browser and navigate to http://localhost:8188 to access the ComfyUI Web UI.

## Notes
* This project includes configuration for utilizing NVIDIA GPUs. If you plan to leverage GPU acceleration, ensure that the correct NVIDIA drivers and Docker's NVIDIA container toolkit are installed.
* The timezone is set to `Asia/Tokyo`. Adjust this setting if necessary.

## License
The license for this project is governed by the terms outlined in the LICENSE file.