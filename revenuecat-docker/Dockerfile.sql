FROM apicurio/apicurio-registry-sql:2.5.8.Final

ADD ./storage/sql/target/apicurio-registry-storage-sql-2.5.8.Final-runner.jar /deployments/
ADD ./storage/sql/target/lib/* /deployments/lib/
