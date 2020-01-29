# # install kubectl
# curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/darwin/amd64/kubectl"

# # Mac has default asctl (apple sandbox control tool) so for mac we name it as as-ctl instead
# chmod +x asctl-amd64-darwin
# sudo mv asctl-amd64-darwin /usr/local/bin/as-ctl

# # config kubectl
# asctl kubeconfig

# # check current cluster
# kubectl config current-context

# # switch clusters
# kubectl config use-context <cluster_name> 

# # kubefwd
# brew install txn2/tap/kubefwd

# # stern
# brew install stern