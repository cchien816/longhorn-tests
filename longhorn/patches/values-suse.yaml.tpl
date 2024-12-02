global:
  # -- Global override for container image registry
  imageRegistry: ""
  # -- Global override for container image registry pull secrets
  imagePullSecrets: []

image:
  longhorn:
    engine:
      # -- Registry for the Longhorn Engine image
      registry: ${CONTAINER_REGISTRY}
      repository: registry.suse.de/home/mbjoerkelund/orchid/containerfile/longhorn-engine
      tag: 1.7.2
    manager:
      # -- Registry for the Longhorn Manager image
      registry: ${CONTAINER_REGISTRY}
      repository: registry.suse.de/home/mbjoerkelund/orchid/containerfile/longhorn-manager
      tag: 1.7.2
    ui:
      # -- Registry for the Longhorn UI image
      registry: ${CONTAINER_REGISTRY}
      repository: registry.suse.de/home/mbjoerkelund/orchid/containerfile/longhorn-ui
      tag: 1.7.2
    instanceManager:
      # -- Registry for the Longhorn Instance Manager image
      registry: ${CONTAINER_REGISTRY}
      repository: registry.suse.de/home/mbjoerkelund/orchid/containerfile/longhorn-instance-manager
      tag: 1.7.2
    shareManager:
      # -- Registry for the Longhorn Share Manager image
      registry: ${CONTAINER_REGISTRY}
      repository: registry.suse.de/home/mbjoerkelund/orchid/containerfile/longhorn-share-manager
      tag: 1.7.2
    backingImageManager:
      # -- Registry for the Backing Image Manager image
      registry: ${CONTAINER_REGISTRY}
      repository: registry.suse.de/home/mbjoerkelund/orchid/containerfile/longhorn-backing-image-manager
      tag: 1.7.2
    supportBundleKit:
      # -- Registry for the Longhorn Support Bundle Manager image
      registry: ${CONTAINER_REGISTRY}
      repository: registry.suse.de/home/mbjoerkelund/orchid/containerfile/rancher-support-bundle-kit
      tag: 0.0.45
  csi:
    attacher:
      # -- Registry for the CSI attacher image
      registry: ${CONTAINER_REGISTRY}
      repository: registry.suse.de/home/mbjoerkelund/orchid/containerfile/kubernetes-csi-external-attacher
      tag: 4.7.0
    provisioner:
      # -- Registry for the CSI Provisioner image
      registry: ${CONTAINER_REGISTRY}
      repository: registry.suse.de/home/mbjoerkelund/orchid/containerfile/kubernetes-csi-external-provisioner
      tag: 5.1.0
    nodeDriverRegistrar:
      # -- Registry for the CSI Node Driver Registrar image
      registry: ${CONTAINER_REGISTRY}
      repository: registry.suse.de/home/mbjoerkelund/orchid/containerfile/kubernetes-csi-node-driver-registrar
      tag: 2.12.0
    resizer:
      # -- Registry for the CSI Resizer image
      registry: ${CONTAINER_REGISTRY}
      repository: registry.suse.de/home/mbjoerkelund/orchid/containerfile/kubernetes-csi-external-resizer
      tag: 1.12.0
    snapshotter:
      # -- Registry for the CSI Snapshotter image
      registry: ${CONTAINER_REGISTRY}
      repository: registry.suse.de/home/mbjoerkelund/orchid/containerfile/kubernetes-csi-external-snapshotter
      tag: 8.1.0
    livenessProbe:
      # -- Registry for the CSI liveness probe image
      registry: ${CONTAINER_REGISTRY}
      repository: registry.suse.de/home/mbjoerkelund/orchid/containerfile/kubernetes-csi-livenessprobe
      tag: 2.14.0
