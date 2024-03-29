#
#  Copyright (c) 2011, Cloudera, Inc. All Rights Reserved.
#
#  Cloudera, Inc. licenses this file to you under the Apache License,
#  Version 2.0 (the "License"). You may not use this file except in
#  compliance with the License. You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  This software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
#  CONDITIONS OF ANY KIND, either express or implied. See the License for
#  the specific language governing permissions and limitations under the
#  License.
#

class apache::params {
  case $operatingsystem {

    /(Debian|Ubuntu)/: {
      $package_name = "apache2"
      $service_name = "apache2"
    }

    /(CentOS|RedHat)/: {
      $package_name = "httpd"
      $service_name = "httpd"
    }

    'SLES': {
      $package_name = "apache2"
      $service_name = "apache2"
    }

    default: {
      fail("apache::params not tested for $operatingsystem")
    }
  }
}
