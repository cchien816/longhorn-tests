#!BuildTag: longhorn:${VERSION}-%RELEASE%
#!BuildTag: longhorn:${VERSION}
annotations:
  helm.sh/images: |
    - image: registry.suse.de/home/mbjoerkelund/orchid/containerfile/longhorn-engine:${VERSION}
      name: longhorn-engine
    - image: registry.suse.de/home/mbjoerkelund/orchid/containerfile/longhorn-manager:${VERSION}
      name: longhorn-manager
    - image: registry.suse.de/home/mbjoerkelund/orchid/containerfile/longhorn-ui:${VERSION}
      name: longhorn-ui
    - image: registry.suse.de/home/mbjoerkelund/orchid/containerfile/longhorn-instance-manager:${VERSION}
      name: longhorn-instance-manager
    - image: registry.suse.de/home/mbjoerkelund/orchid/containerfile/longhorn-share-manager:${VERSION}
      name: longhorn-share-manager
    - image: registry.suse.de/home/mbjoerkelund/orchid/containerfile/longhorn-backing-image-manager:${VERSION}
      name: longhorn-backing-image-manager
    - image: registry.suse.de/home/mbjoerkelund/orchid/containerfile/rancher-support-bundle-kit:0
      name: rancher-support-bundle-kit
    - image: registry.suse.de/home/mbjoerkelund/orchid/containerfile/kubernetes-csi-external-attacher:4
      name: kubernetes-csi-external-attacher
    - image: registry.suse.de/home/mbjoerkelund/orchid/containerfile/kubernetes-csi-external-provisioner:5
      name: kubernetes-csi-external-provisioner
    - image: registry.suse.de/home/mbjoerkelund/orchid/containerfile/kubernetes-csi-node-driver-registrar:2
      name: kubernetes-csi-node-driver-registrar
    - image: registry.suse.de/home/mbjoerkelund/orchid/containerfile/kubernetes-csi-external-resizer:1
      name: kubernetes-csi-external-resizer
    - image: registry.suse.de/home/mbjoerkelund/orchid/containerfile/kubernetes-csi-external-snapshotter:8
      name: kubernetes-csi-external-snapshotter
    - image: registry.suse.de/home/mbjoerkelund/orchid/containerfile/kubernetes-csi-livenessprobe:2
      name: kubernetes-csi-livenessprobe
apiVersion: v2
appVersion: ${APP_VERSION}
description: Longhorn is a distributed block storage system for Kubernetes. Longhorn is cloud-native storage built using Kubernetes and container primitives.
home: https://apps.rancher.io/applications/longhorn
icon: https://raw.githubusercontent.com/cncf/artwork/master/projects/longhorn/icon/color/longhorn-icon-color.png
maintainers:
  - name: SUSE LLC
    url: https://www.suse.com/
name: longhorn
version: ${VERSION}
