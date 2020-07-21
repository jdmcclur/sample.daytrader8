oc login
podman login -u ocpadmin -p "$(oc whoami -t)" --tls-verify=false "$(oc registry info)"
