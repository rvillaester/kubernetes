In static PV, make sure to create the disk first

-- apply the pv
kubectl create -f pv.yaml

-- get the pv/pvc information
kubectl get pv
kubectl describe pv pv-gce
kubectl get pvc

-- get inside the pod
kubectl exec pv-pod -it -- /bin/sh

-- execute command in a specific pod
kubectl exec pv-pod df /test-pv

-- check the mounted disk
df -h /test-pv

-- create file inside the pod
cd /test-pv
echo "test file" > test.txt
exit

-- delete the pod
kubectl delete -f pod-pvc.yaml

-- create the pod again then check the file

---- storage class -----
kubectl get storageClass
kubectl describe storageClass fast
-- default type will pd-standard (hdd)