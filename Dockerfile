FROM java:8

EXPOSE 8080

ADD target/docker-kubernetes-kibana-prometheus.jar docker-kubernetes-kibana-prometheus.jar

ENTRYPOINT ["java","-jar","docker-kubernetes-kibana-prometheus.jar"]