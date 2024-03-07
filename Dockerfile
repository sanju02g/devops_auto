# Pull the minimal Ubuntu image
#FROM ubuntu

# Install Nginx
#RUN apt-get -y update && apt-get -y install nginx

# Copy the Nginx config
#COPY default /etc/nginx/sites-available/default

# Expose the port for access
#EXPOSE 80/tcp

# Run the Nginx server
#CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
FROM ubuntu:20.04
RUN apt update -y && apt install ansible -y && apt install vim -y
COPY ./devops_auto/ansible/hosts /etc/ansible
COPY ./devops_auto/ansible/playbook.yml /etc/ansible
WORKDIR /etc/ansible
#ENTRYPOINT ["sleep"]
#CMD ["infinite"] 
