FROM jenkins/jenkins:lts
USER root
RUN apt-get update \
    && apt install -y wget \
    && apt install -y unzip \
    && apt install -y vim \
    && apt install -y openssh-client 
   # && -v jenkins_home:/var/jenkins_home \
   # && -v /var/run/docker.sock:/var/run/docker.sock \
    #&& -e AWS_SECRET_ACCESS_KEY \
    #&& -e AWS_ACCESS_KEY_ID
# Download the latest version of Terraform from the official website
RUN wget https://releases.hashicorp.com/terraform/0.15.4/terraform_0.15.4_linux_amd64.zip

# Unzip the downloaded file:
RUN unzip terraform_0.15.4_linux_amd64.zip

# Move the terraform binary to a directory in your system's PATH.
RUN mv terraform /usr/local/bin/

# Verify that Terraform is installed by checking its version:
RUN terraform version
EXPOSE 8080
EXPOSE 50000
# docker run -d -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -e AWS_SECRET_ACCESS_KEY -e AWS_ACCESS_KEY_ID --name jenkinsmodified jenkinsmodified
