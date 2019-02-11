# Copyright 2013 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module Legacy
  module Google
    class APIClient
      class Service
        ##
        # Handles an API resource.
        # Simple class that contains API methods and/or child resources.
        class Resource
          include Legacy::Google::APIClient::Service::StubGenerator
  
          ##
          # Build a resource.
          # This class should not be directly instantiated in user code; resources
          # are instantiated by the stub generation mechanism on Service creation.
          #
          # @param [Legacy::Google::APIClient::Service] service
          #   The Service instance this resource belongs to.
          # @param [Legacy::Google::APIClient::API, Legacy::Google::APIClient::Resource] root
          #   The node corresponding to this resource.
          def initialize(service, root)
            @service = service
            generate_call_stubs(service, root)
          end
        end
      end
    end
  end
end
