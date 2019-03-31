-- create config map
kubectl create configmap <map-name> <data-source>
kubectl create configmap app-config --from-file=properties/app-config
kubectl create configmap redis-config --from-file=redis-config.properties

-- delete configmap
kubectl delete configmap <map-name>

-- display the config map
kubectl get configmap app-config -o yaml