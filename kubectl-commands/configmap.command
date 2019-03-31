-- config map
kubectl configmap <map-name> <data-source>
kubectl configmap app-config --from-file=properties/app-config
kubectl configmap redis-config --from-file=redis-config.properties

-- display the config map
kubectl get configmap app-config -o yaml