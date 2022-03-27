# DockerKubernetesKibanaPrometheus
 DockerKubernetesKibanaPrometheus
 
 I have added settings.xml inside .m2 folder, which contains server profile for connecting and authenticating with docker registry server.
 Also, a settings-security.xml was updated, containing the encrypted maven master password, used to encrypt docker registry password in previous step.
 Command to encrypt - 
 mvn --encrypt-master-password <password>
 mvn --encrypt-password <password>
 
 Commands that did not work(For pushing docker image to docker registry using Spotify plugin):
 1) mvn clean package -Ddockerfile.useMavenSettingsForAuth=true
 This was successful but docker image not pushed to registry.
 
 2) In cmd -> docker login -> docker push docker-kubernetes-kibana-prometheus
 Authenticating with existing credentials...Login Succeeded
But,
denied: requested access to the resource is denied


For pushing docker image to docker registry using JIB(open-source, by Google) plugin(did not work):
- don't need to write a dockerfile
- don't even have to have docker installed
- saves us separate docker build/push commands and simplifies adding this to a CI pipeline


Manual Process(Working):
1) Reach to the project folder in CMD, where Dockerfile exists
2) Run -> docker build -t docker-kubernetes-kibana-prometheus
3) Run -> docker tag docker-kubernetes-kibana-prometheus:0.0.1-SNAPSHOT ibsanchar/docker-kubernetes-kibana-prometheus
4) Run -> docker push ibsanchar/docker-kubernetes-kibana-prometheus

Simple command to run the application inside docker:
docker run -p 8080:8080 ibsanchar/docker-kubernetes-kibana-prometheus

