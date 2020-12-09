# Infrastructure As Code - Ansible Configuration Management

Writing Infrastructure as code / declaring infrastructure and executing the code to create it. It can create Machines, Environments, or architecture.
Two catagories of tools : Configuration management & Orchestration.

Largely up till now, we have mostly been doing mutable environments. We SSH in, run bash scripts, restart server and get it to the place the machines need to be.

Making something from scratch (IAC) has drawbacks - it may take slightly longer, however in the long run is more efficient as you get more predictable results.

## Configuration Management
- They help configure and test machines to a specific state.
- They also help with the maintaining of this system.
    + Puppet
    + Chef
    + Ansible (Push configuration management)
- They help provision
    + Install/Update packages
    + Config Files
    + Environment variables
    + Start and Enable services
- They have a Controller Agent/Host relationship
- Packer or Ansible --> create AMI

## Orchestration 
Once we have a machine image, orchestration tools are used to deploy these into more complex environments. These tools focus on networking and architecture rather than the configuration of individual machines. They focus more on the environment these machines run.
  - Terraform
  - Ansible
  - Cloud Formation
- They help provision
    - Creating subnets
    - NACL
    - IGW
    - SG
    - Networking components in general
    - Other services (Autoscaling, monitoring)

## Ansible Intro
- Configuration management Software
- Allows you to make changes to machines in a declarative way, through a "push" system
- Ansible host connects to your servers. Sending out its playbooks, that runs through its plays to provision the servers. An ansible host can be anything from your laptop to a github repository.
![](img/Ansibletoserver.png)

- Agnostic platform - Less vendor locking
    - With the Ansible abstraction layer, means you can run the code in any environment for any OS and it will know how to install and pERform the operation.
        - e.g 
        - ubuntu uses `apt`
        - Centos uses `dnf` or `yum`
        - IOs Brew others
- Testing strategies
    - If you use ansible language in your playbook - clarification: Not bash
    - Then it will automatically 1) Install/configure 2) Test that it did do the action
    - If the test fails it will break

