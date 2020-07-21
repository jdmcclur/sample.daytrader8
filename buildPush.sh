
mvn clean package
podman build -t dt8 -f Dockerfile-db2 .
podman tag dt8 "$(oc registry info)"/"$(oc project -q)"/dt8
podman push --tls-verify=false "$(oc registry info)"/"$(oc project -q)"/dt8

