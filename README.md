Scenario
---

A web app running on port 80 needs to be deployed to a Kubernetes install. For the sake of this test, please tailor your answer to use a local instance of minikube. You are tasked with automating the deployment process pipeline, to containerize and deploy the application to Kubernetes. Please use the sample Ruby application https://github.com/sawasy/http_server. It runs on TCP port 80. The application also exposes a health check and endpoint at the route /healthcheck.

Solution
----

The solution comprises of below steps which will be detailed out in the next section. Following is the architecture diagram of the flow of steps :

![image](https://user-images.githubusercontent.com/68593337/120637628-c2f16e80-c48c-11eb-958a-fdc6f81b4d0d.png)


1) Setup a Docker Image with a Docker File embedding the code of setting up the prerequisites for running the Ruby code which is injected to the images. Keep the Docker File on a directory with the Ruby Code and run below command. Keep the Tag same as that in Docker Hub:

        docker build -t saket14/rubyhelloworld:1.0 .
    
![image](https://user-images.githubusercontent.com/68593337/120638631-fd0f4000-c48d-11eb-85fe-bd916769e7fb.png)

2) Push the Docker Image to Docker Hub Repository and store it there for the Kubernetes deployment to pick up. Push the image to the Docker Hub Repository using below command :

        docker push saket14/rubyhelloworld:1.0
    
![image](https://user-images.githubusercontent.com/68593337/120638697-144e2d80-c48e-11eb-8003-ed13ff93a58f.png)

