# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Defines values for ContainerType
    #
    module ContainerType
      Invalid = "Invalid"
      Unknown = "Unknown"
      IaasVMContainer = "IaasVMContainer"
      IaasVMServiceContainer = "IaasVMServiceContainer"
      DPMContainer = "DPMContainer"
      AzureBackupServerContainer = "AzureBackupServerContainer"
      MABContainer = "MABContainer"
      Cluster = "Cluster"
      AzureSqlContainer = "AzureSqlContainer"
      Windows = "Windows"
      VCenter = "VCenter"
      VMAppContainer = "VMAppContainer"
      SQLAGWorkLoadContainer = "SQLAGWorkLoadContainer"
      StorageContainer = "StorageContainer"
      GenericContainer = "GenericContainer"
    end
  end
end
