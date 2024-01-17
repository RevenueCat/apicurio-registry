FROM apicurio/apicurio-registry-sql:2.5.8.Final

ADD ./app/target/apicurio-registry-app-2.5.8.Final-runner.jar /deployments/
ADD ./app/target/lib/* /deployments/lib/
