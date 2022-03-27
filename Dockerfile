FROM java:11

EXPOSE 8080

ADD target/DockerKubernetesKibanaPrometheus.jar DockerKubernetesKibanaPrometheus.jar

ENTRYPOINT ["java","-jar","DockerKubernetesKibanaPrometheus.jar"]