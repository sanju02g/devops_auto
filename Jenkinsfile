import docker

# Docker tag variable

# Docker client initialization
client = docker.from_env()

# Build Docker image
image, build_logs = client.images.build(
    path=".",  # Path to the Dockerfile and context
    tag=f"sanju02g/ansible:latest",
)

# Output build logs
for log in build_logs:
    print(log)
