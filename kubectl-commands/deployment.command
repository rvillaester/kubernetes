-- apply the deployment
kubectl create -f deployment.yaml

-- get the deployment information
kubectl get deploy -l app=nginx-app
kubectl get rs -l app=nginx-app
kubectl get po -l app=nginx-app -o wide
kubectl describe deploy nginx-deploy

-- upgrade the application version
kubectl set image deploy nginx-deploy nginx-container=nginx:1.9.1 --record
kubectl edit deploy nginx-deploy

-- check the upgrade status
kubectl rollout status deployment/nginx-deploy
kubectl rollout history deployment/nginx-deploy

-- undo the upgrade if anything goes wrong
kubectl rollout undo deployment/nginx-deploy

-- scale up and down the application
kubectl scale deployment nginx-deploy --replicas=5

-- delete deployment
kubectl delete -f deployment.yaml