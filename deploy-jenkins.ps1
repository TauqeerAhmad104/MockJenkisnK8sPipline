# Create the Jenkins namespace
kubectl apply -f namespace.yaml

# Create Persistent Volume and Persistent Volume Claim
kubectl apply -f pv-pvc.yaml

# Create the ConfigMap for Jenkins Configuration as Code (JCasC)
kubectl apply -f jenkins-config.yaml

# Create the Jenkins Deployment
kubectl apply -f jenkins-deployment.yaml

# Create the Jenkins Service
kubectl apply -f jenkins-service.yaml

# Apply RBAC configurations
kubectl apply -f rbac-config.yaml

Write-Host "Jenkins deployment initiated. Please check the status using kubectl and access Jenkins once the LoadBalancer is provisioned."
