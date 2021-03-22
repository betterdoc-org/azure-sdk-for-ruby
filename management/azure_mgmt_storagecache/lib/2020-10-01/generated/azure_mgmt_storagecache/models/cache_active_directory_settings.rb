# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageCache::Mgmt::V2020_10_01
  module Models
    #
    # Active Directory settings used to join a cache to a domain.
    #
    class CacheActiveDirectorySettings

      include MsRestAzure

      # @return [String] Primary DNS IP address used to resolve the Active
      # Directory domain controller's fully qualified domain name.
      attr_accessor :primary_dns_ip_address

      # @return [String] Secondary DNS IP address used to resolve the Active
      # Directory domain controller's fully qualified domain name.
      attr_accessor :secondary_dns_ip_address

      # @return [String] The fully qualified domain name of the Active
      # Directory domain controller.
      attr_accessor :domain_name

      # @return [String] The Active Directory domain's NetBIOS name.
      attr_accessor :domain_net_bios_name

      # @return [String] The NetBIOS name to assign to the HPC Cache when it
      # joins the Active Directory domain as a server. Length must 1-15
      # characters from the class [-0-9a-zA-Z].
      attr_accessor :cache_net_bios_name

      # @return [DomainJoinedType] True if the HPC Cache is joined to the
      # Active Directory domain. Possible values include: 'Yes', 'No', 'Error'
      attr_accessor :domain_joined

      # @return [CacheActiveDirectorySettingsCredentials] Active Directory
      # admin credentials used to join the HPC Cache to a domain.
      attr_accessor :credentials


      #
      # Mapper for CacheActiveDirectorySettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CacheActiveDirectorySettings',
          type: {
            name: 'Composite',
            class_name: 'CacheActiveDirectorySettings',
            model_properties: {
              primary_dns_ip_address: {
                client_side_validation: true,
                required: true,
                serialized_name: 'primaryDnsIpAddress',
                type: {
                  name: 'String'
                }
              },
              secondary_dns_ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secondaryDnsIpAddress',
                type: {
                  name: 'String'
                }
              },
              domain_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'domainName',
                type: {
                  name: 'String'
                }
              },
              domain_net_bios_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'domainNetBiosName',
                type: {
                  name: 'String'
                }
              },
              cache_net_bios_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'cacheNetBiosName',
                constraints: {
                  Pattern: '^[-0-9a-zA-Z]{1,15}$'
                },
                type: {
                  name: 'String'
                }
              },
              domain_joined: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'domainJoined',
                type: {
                  name: 'String'
                }
              },
              credentials: {
                client_side_validation: true,
                required: false,
                serialized_name: 'credentials',
                type: {
                  name: 'Composite',
                  class_name: 'CacheActiveDirectorySettingsCredentials'
                }
              }
            }
          }
        }
      end
    end
  end
end