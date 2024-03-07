FROM ubuntu:20.04
RUN apt update -y && apt install ansible -y && apt install vim -y
COPY ./devops_auto/ansible/hosts /etc/ansible
COPY ./devops_auto/ansible/playbook.yml /etc/ansible
WORKDIR /etc/ansible
#ENTRYPOINT ["sleep"]
#CMD ["infinite"] 
