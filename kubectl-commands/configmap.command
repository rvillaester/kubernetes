-- create config map
kubectl create configmap <map-name> <data-source>
-- from directory
kubectl create configmap app-config --from-file=properties/app-config
-- from file
kubectl create configmap redis-config --from-file=<key>=<file>
kubectl create configmap redis-config --from-file=redis-config.properties
-- from literal value
kubectl create configmap redis-config --from-literal=<key>=<value>

-- delete configmap
kubectl delete configmap <map-name>

-- display the config map
kubectl get configmap app-config -o yaml