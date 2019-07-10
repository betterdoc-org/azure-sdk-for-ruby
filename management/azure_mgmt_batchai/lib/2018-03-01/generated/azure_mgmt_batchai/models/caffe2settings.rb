# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_03_01
  module Models
    #
    # Specifies the settings for Caffe2 job.
    #
    class Caffe2Settings

      include MsRestAzure

      # @return [String] The path and file name of the python script to execute
      # the job.
      attr_accessor :python_script_file_path

      # @return [String] The path to python interpreter.
      attr_accessor :python_interpreter_path

      # @return [String] Command line arguments that needs to be passed to the
      # python script.
      attr_accessor :command_line_args


      #
      # Mapper for Caffe2Settings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Caffe2Settings',
          type: {
            name: 'Composite',
            class_name: 'Caffe2Settings',
            model_properties: {
              python_script_file_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'pythonScriptFilePath',
                type: {
                  name: 'String'
                }
              },
              python_interpreter_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pythonInterpreterPath',
                type: {
                  name: 'String'
                }
              },
              command_line_args: {
                client_side_validation: true,
                required: false,
                serialized_name: 'commandLineArgs',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
