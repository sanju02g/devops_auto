import docker

# Docker tag variable
DOCKER_TAG = "latest"

# Docker client initialization
client = docker.from_env()

# Build Docker image
image, build_logs = client.images.build(
    path=".",  # Path to the Dockerfile and context
    tag=f"sanju02g/ansible:{DOCKER_TAG}",
)

# Output build logs
for log in build_logs:
    print(log)
