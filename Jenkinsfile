import subprocess

// Docker tag variable
DOCKER_TAG = "latest"

// Define the Docker build command
docker_build_command = [
    "docker",
    "build",
    "-t",
    f"sanju02g/ansible:{DOCKER_TAG}",
    "."
]

// Run the Docker build command
process = subprocess.Popen(docker_build_command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
stdout, stderr = process.communicate()

//Print output and error messages
print("Output:", stdout.decode())
print("Errors:", stderr.decode())
