FROM tomcat:9.0.73-jdk17-corretto
COPY target/customer.war webapps/
ENV CATALINA_OPTS="-Xms250m -Xmx2g"

EXPOSE 8080
ENTRYPOINT ["catalina.sh"]
CMD ["run"]