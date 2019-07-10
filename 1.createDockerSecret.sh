kubectl create namespace microclimate

kubectl create namespace microclimate-pipeline-deployments

kubectl create secret docker-registry microclimate-registry-secret \
  --docker-server=mycluster.icp:8500 \
  --docker-username=admin \
  --docker-password=passw0rd \
  --docker-email=null \
  -n microclimate

kubectl create secret docker-registry microclimate-pipeline-secret \
  --docker-server=mycluster.icp:8500 \
  --docker-username=admin \
  --docker-password=passw0rd \
  --docker-email=null \
  -n microclimate-pipeline-deployments

kubectl patch serviceaccount default --namespace microclimate-pipeline-deployments -p "{\"imagePullSecrets\": [{\"name\": \"microclimate-pipeline-secret\"}]}"