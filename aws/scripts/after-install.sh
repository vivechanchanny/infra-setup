#!/bin/bash
set -xe
sudo su

# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3:/codedeploystack-webappdeploymentbucket-np3h39n1a6g9/SpringBootHelloWorldExampleApplication.war /usr/local/tomcat9/webapps/SpringBootHelloWorldExampleApplication.war


# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /usr/local/tomcat9/webapps
