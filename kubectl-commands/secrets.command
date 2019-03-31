In static PV, make sure to create the disk first

-- create secret via kubectl
kubectl create secret [type] [name] [data]

type can be:
    generic
        file
        directory
        literal value
    docker registry
    tls

kubectl create secret generic user-pass --from-file=properties/.password

--display secrets information
kubectl get secrets
kubectl describe secrets [name]
kubectl describe secrets [name] -o yaml

-- create secret manually
-- encode first the value
echo -n 'admin' | base64
-- decode secret
echo 'cm9vdA==' | base64 --decode