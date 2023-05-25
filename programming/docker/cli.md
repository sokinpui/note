# basic docker
Here are some basic commands for using Docker:

1. `docker run`: This command is used to run a Docker container. It takes the 
   name of the image to run as an argument, and can be customized with various 
   options. For example, to run a container based on the latest version of the 
   official Ubuntu image, you can use the following command:

   ```
   docker run -it ubuntu:latest bash
   ```

   This command starts a new container and runs the `bash` shell inside it.

2. `docker ps`: This command is used to list all running containers. By default, 
   it only shows containers that are currently running, but you can use the `-a` 
   option to show all containers, including those that have stopped. For 
   example, to list all running containers, you can use the following command:

   ```
   docker ps
   ```

3. `docker images`: This command is used to list all Docker images that are 
   currently available on your system. For example, to list all images on your 
   system, you can use the following command:

   ```
   docker images
   ```

4. `docker build`: This command is used to build a Docker image from a 
   Dockerfile. It takes the path to the directory containing the Dockerfile as 
   an argument. For example, to build an image from a Dockerfile in the current 
   directory, you can use the following command:

   ```
   docker build .
   ```

5. `docker pull`: This command is used to download a Docker image from a 
   registry, such as Docker Hub. For example, to download the latest version of 
   the official Ubuntu image, you can use the following command:

   ```
   docker pull ubuntu:latest
   ```

6. `docker stop`: This command is used to stop a running container. It takes the 
   name or ID of the container as an argument. For example, to stop a container 
   named `my_container`, you can use the following command:

   ```
   docker stop my_container
   ```

7. `docker rm`: This command is used to remove a stopped container. It takes the 
   name or ID of the container as an argument. For example, to remove a 
   container named `my_container`, you can use the following command:

   ```
   docker rm my_container
   ```

These are some of the basic commands for using Docker. There are many more 
commands available for managing Docker images and containers, and you can find 
more information about them in the Docker documentation.
