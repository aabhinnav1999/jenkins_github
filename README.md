# Pre Requisities 

### On Jenkins Node
1. Install Java
2. Install Jenkins

   :link: <a target="_blank" >https://www.jenkins.io/doc/book/installing/</a>  

3. Go to manage jenkins (⚙️ Icon), select nodes and add worker node

   Before adding worker node:

    1. Install Docker

    2. Install Java
  
    3. Create one directory for jenkins in the worker node

    4. Set the permissions on /var/run/docker.sock => chmod 777 /var/run/docker.sock
    ```bash
    sudo chmod 777 /var/run/docker.sock
    ```

### Add Docker Hub Credentials
1. Go to manage jenkins

2. Go to Credentials

3. Select username with password

4. Add docker username and password
