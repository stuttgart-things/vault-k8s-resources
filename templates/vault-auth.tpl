---
apiVersion: secrets.hashicorp.com/v1beta1
kind: VaultAuth
metadata:
  name: ${name}
  namespace: ${namespace}
spec:
  vaultConnectionRef: ${name}
  method: kubernetes
  mount: ${var.cluster_name}-${name}
  kubernetes:
    role: ${name}
    serviceAccount: ${name}
