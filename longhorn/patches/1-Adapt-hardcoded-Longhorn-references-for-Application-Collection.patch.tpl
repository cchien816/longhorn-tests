diff --git a/packages/longhorn/1.7/README.md.gotmpl b/packages/longhorn/1.7/README.md.gotmpl
index 6167301..7cd78dc 100644
--- a/packages/longhorn/1.7/README.md.gotmpl
+++ b/packages/longhorn/1.7/README.md.gotmpl
@@ -40,21 +40,11 @@ As a replacement for PSPs, [Pod Security Admission](https://kubernetes.io/docs/c
 
 ## Installation
 
-1. Add Longhorn chart repository.
-```
-helm repo add longhorn https://charts.longhorn.io
-```
-
-2. Update local Longhorn chart information from chart repository.
-```
-helm repo update
-```
-
-3. Use the following commands to create the `longhorn-system` namespace first, then install the Longhorn chart.
+Use the following commands to create the `longhorn-system` namespace first, then install the Longhorn chart.
 
 ```
 kubectl create namespace longhorn-system
-helm install longhorn longhorn/longhorn --namespace longhorn-system
+helm install longhorn ${CHART_REGISTRY}/charts/longhorn --namespace longhorn-system
 ```
 
 ## Uninstallation
