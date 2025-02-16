require 'droplet_kit/version'
require 'active_support/all'
require 'resource_kit'
require 'kartograph'

module DropletKit
  autoload :Client, 'droplet_kit/client'

  # Models
  autoload :BaseModel, 'droplet_kit/models/base_model'
  autoload :Droplet, 'droplet_kit/models/droplet'
  autoload :Region, 'droplet_kit/models/region'
  autoload :Image, 'droplet_kit/models/image'
  autoload :Size, 'droplet_kit/models/size'
  autoload :NetworkHash, 'droplet_kit/models/network_hash'
  autoload :Network, 'droplet_kit/models/network'
  autoload :Kernel, 'droplet_kit/models/kernel'
  autoload :Snapshot, 'droplet_kit/models/snapshot'
  autoload :Action, 'droplet_kit/models/action'
  autoload :Domain, 'droplet_kit/models/domain'
  autoload :DomainRecord, 'droplet_kit/models/domain_record'
  autoload :SSHKey, 'droplet_kit/models/ssh_key'
  autoload :MetaInformation, 'droplet_kit/models/meta_information'
  autoload :Account, 'droplet_kit/models/account'
  autoload :DropletUpgrade, 'droplet_kit/models/droplet_upgrade'
  autoload :FloatingIp, 'droplet_kit/models/floating_ip'
  autoload :Project, 'droplet_kit/models/project'
  autoload :ProjectAssignment, 'droplet_kit/models/project_assignment'
  autoload :Links, 'droplet_kit/models/links'
  autoload :Tag, 'droplet_kit/models/tag'
  autoload :TaggedResources, 'droplet_kit/models/tagged_resources'
  autoload :TaggedDropletsResources, 'droplet_kit/models/tagged_droplets_resources'
  autoload :TaggedImagesResources, 'droplet_kit/models/tagged_images_resources'
  autoload :Volume, 'droplet_kit/models/volume'
  autoload :LoadBalancer, 'droplet_kit/models/load_balancer'
  autoload :StickySession, 'droplet_kit/models/sticky_session'
  autoload :HealthCheck, 'droplet_kit/models/health_check'
  autoload :ForwardingRule, 'droplet_kit/models/forwarding_rule'
  autoload :Certificate, 'droplet_kit/models/certificate'
  autoload :Firewall, 'droplet_kit/models/firewall'
  autoload :FirewallRule, 'droplet_kit/models/firewall_rule'
  autoload :FirewallInboundRule, 'droplet_kit/models/firewall_inbound_rule'
  autoload :FirewallOutboundRule, 'droplet_kit/models/firewall_outbound_rule'
  autoload :FirewallPendingChange, 'droplet_kit/models/firewall_pending_change'
  autoload :CDN, 'droplet_kit/models/cdn'
  autoload :KubernetesCluster, 'droplet_kit/models/kubernetes_cluster'
  autoload :KubernetesNodePool, 'droplet_kit/models/kubernetes_node_pool'
  autoload :KubernetesNode, 'droplet_kit/models/kubernetes_node'
  autoload :KubernetesOptions, 'droplet_kit/models/kubernetes_options'
  autoload :VPC, 'droplet_kit/models/vpc'
  autoload :VPCMember, 'droplet_kit/models/vpc_member'

  # Resources
  autoload :DropletResource, 'droplet_kit/resources/droplet_resource'
  autoload :ActionResource, 'droplet_kit/resources/action_resource'
  autoload :DomainResource, 'droplet_kit/resources/domain_resource'
  autoload :DomainRecordResource, 'droplet_kit/resources/domain_record_resource'
  autoload :DropletActionResource, 'droplet_kit/resources/droplet_action_resource'
  autoload :ImageResource, 'droplet_kit/resources/image_resource'
  autoload :ImageActionResource, 'droplet_kit/resources/image_action_resource'
  autoload :SSHKeyResource, 'droplet_kit/resources/ssh_key_resource'
  autoload :RegionResource, 'droplet_kit/resources/region_resource'
  autoload :SizeResource, 'droplet_kit/resources/size_resource'
  autoload :AccountResource, 'droplet_kit/resources/account_resource'
  autoload :DropletUpgradeResource, 'droplet_kit/resources/droplet_upgrade_resource'
  autoload :FloatingIpResource, 'droplet_kit/resources/floating_ip_resource'
  autoload :FloatingIpActionResource, 'droplet_kit/resources/floating_ip_action_resource'
  autoload :ProjectResource, 'droplet_kit/resources/project_resource'
  autoload :TagResource, 'droplet_kit/resources/tag_resource'
  autoload :VolumeResource, 'droplet_kit/resources/volume_resource'
  autoload :VolumeActionResource, 'droplet_kit/resources/volume_action_resource'
  autoload :SnapshotResource, 'droplet_kit/resources/snapshot_resource'
  autoload :LoadBalancerResource, 'droplet_kit/resources/load_balancer_resource'
  autoload :CertificateResource, 'droplet_kit/resources/certificate_resource'
  autoload :FirewallResource, 'droplet_kit/resources/firewall_resource'
  autoload :CDNResource, 'droplet_kit/resources/cdn_resource'
  autoload :KubernetesClusterResource, 'droplet_kit/resources/kubernetes_cluster_resource'
  autoload :KubernetesOptionsResource, 'droplet_kit/resources/kubernetes_options_resource'
  autoload :VPCResource, 'droplet_kit/resources/vpc_resource'

  # JSON Maps
  autoload :DropletMapping, 'droplet_kit/mappings/droplet_mapping'
  autoload :ImageMapping, 'droplet_kit/mappings/image_mapping'
  autoload :RegionMapping, 'droplet_kit/mappings/region_mapping'
  autoload :SizeMapping, 'droplet_kit/mappings/size_mapping'
  autoload :NetworkMapping, 'droplet_kit/mappings/network_mapping'
  autoload :NetworkDetailMapping, 'droplet_kit/mappings/network_detail_mapping'
  autoload :KernelMapping, 'droplet_kit/mappings/kernel_mapping'
  autoload :SnapshotMapping, 'droplet_kit/mappings/snapshot_mapping'
  autoload :ActionMapping, 'droplet_kit/mappings/action_mapping'
  autoload :DomainMapping, 'droplet_kit/mappings/domain_mapping'
  autoload :DomainRecordMapping, 'droplet_kit/mappings/domain_record_mapping'
  autoload :DropletActionMapping, 'droplet_kit/mappings/droplet_action_mapping'
  autoload :ImageActionMapping, 'droplet_kit/mappings/image_action_mapping'
  autoload :SSHKeyMapping, 'droplet_kit/mappings/ssh_key_mapping'
  autoload :AccountMapping, 'droplet_kit/mappings/account_mapping'
  autoload :DropletUpgradeMapping, 'droplet_kit/mappings/droplet_upgrade_mapping'
  autoload :FloatingIpMapping, 'droplet_kit/mappings/floating_ip_mapping'
  autoload :ProjectMapping, 'droplet_kit/mappings/project_mapping'
  autoload :ProjectAssignmentMapping, 'droplet_kit/mappings/project_assignment_mapping'
  autoload :LinksMapping, 'droplet_kit/mappings/links_mapping'
  autoload :TagMapping, 'droplet_kit/mappings/tag_mapping'
  autoload :TaggedResourcesMapping, 'droplet_kit/mappings/tagged_resources_mapping'
  autoload :TaggedDropletsResourcesMapping, 'droplet_kit/mappings/tagged_droplets_resources_mapping'
  autoload :TaggedImagesResourcesMapping, 'droplet_kit/mappings/tagged_images_resources_mapping'
  autoload :VolumeMapping, 'droplet_kit/mappings/volume_mapping'
  autoload :LoadBalancerMapping, 'droplet_kit/mappings/load_balancer_mapping'
  autoload :StickySessionMapping, 'droplet_kit/mappings/sticky_session_mapping'
  autoload :HealthCheckMapping, 'droplet_kit/mappings/health_check_mapping'
  autoload :ForwardingRuleMapping, 'droplet_kit/mappings/forwarding_rule_mapping'
  autoload :CertificateMapping, 'droplet_kit/mappings/certificate_mapping'
  autoload :FirewallMapping, 'droplet_kit/mappings/firewall_mapping'
  autoload :FirewallRuleMapping, 'droplet_kit/mappings/firewall_rule_mapping'
  autoload :FirewallInboundRuleMapping, 'droplet_kit/mappings/firewall_inbound_rule_mapping'
  autoload :FirewallOutboundRuleMapping, 'droplet_kit/mappings/firewall_outbound_rule_mapping'
  autoload :FirewallPendingChangeMapping, 'droplet_kit/mappings/firewall_pending_change_mapping'
  autoload :CDNMapping, 'droplet_kit/mappings/cdn_mapping'
  autoload :KubernetesClusterMapping, 'droplet_kit/mappings/kubernetes_cluster_mapping'
  autoload :KubernetesMaintenancePolicyMapping, 'droplet_kit/mappings/kubernetes_maintenance_policy_mapping'
  autoload :KubernetesNodePoolMapping, 'droplet_kit/mappings/kubernetes_node_pool_mapping'
  autoload :KubernetesNodeMapping, 'droplet_kit/mappings/kubernetes_node_mapping'
  autoload :KubernetesOptionsMapping, 'droplet_kit/mappings/kubernetes_options_mapping'
  autoload :VPCMapping, 'droplet_kit/mappings/vpc_mapping'
  autoload :VPCMemberMapping, 'droplet_kit/mappings/vpc_member_mapping'

  # Utils
  autoload :PaginatedResource, 'droplet_kit/paginated_resource'
  autoload :ErrorHandlingResourcable, 'droplet_kit/error_handling_resourcable'

  # Errors
  autoload :ErrorMapping, 'droplet_kit/mappings/error_mapping'
  Error = Class.new(StandardError)
  FailedCreate = Class.new(DropletKit::Error)
  FailedUpdate = Class.new(DropletKit::Error)
  FailedDelete = Class.new(DropletKit::Error)

  class RateLimitReached < DropletKit::Error
    attr_accessor :reset_at
    attr_writer :limit, :remaining

    def limit
      @limit.to_i if @limit
    end

    def remaining
      @remaining.to_i if @remaining
    end
  end
end
