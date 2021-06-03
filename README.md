#Scenario
---

A web app running on port 80 needs to be deployed to a Kubernetes install. For the sake of this test, please tailor your answer to use a local instance of minikube. You are tasked with automating the deployment process pipeline, to containerize and deploy the application to Kubernetes. Please use the sample Ruby application https://github.com/sawasy/http_server. It runs on TCP port 80. The application also exposes a health check and endpoint at the route /healthcheck.

#Solution
----

The solution comprises of below steps which will be detailed out in the next section. Following is the architecture diagram of the flow of steps :


image

