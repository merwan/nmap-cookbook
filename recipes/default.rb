#
# Author:: Merouane Atig <merouane.atig@gmail.com>
# Cookbook Name:: nmap
# Recipe:: default
#
# Copyright 2015, Merouane Atig
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node["platform"]
when "ubuntu", "debian"
  package 'libcap2-bin'
when "redhat", "centos", "amazon", "scientific"
  package 'libcap'
end

package 'nmap'

bash 'Add capabilities to Nmap' do
  user 'root'
  code <<-EOH
    setcap cap_net_raw,cap_net_admin,cap_net_bind_service+eip /usr/bin/nmap
  EOH
end
