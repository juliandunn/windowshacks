#
# Cookbook Name:: windowshacks
# Recipe:: oeminfo
#
# Copyright 2013, Opscode, Inc.
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

cookbook_file 'C:\Windows\System32\oemlogo.bmp' do
  source node['windowshacks']['oeminfo']['logofile']
  action :create
end

registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation' do
  values [{:name => 'Logo', :type => :string, :data => 'C:\Windows\System32\oemlogo.bmp'},
          {:name => 'Manufacturer', :type => :string, :data => node['windowshacks']['oeminfo']['manufacturer']},
          {:name => 'SupportHours', :type => :string, :data => node['windowshacks']['oeminfo']['supporthours']},
          {:name => 'SupportPhone', :type => :string, :data => node['windowshacks']['oeminfo']['supportphone']},
          {:name => 'SupportURL', :type => :string, :data => node['windowshacks']['oeminfo']['supporturl']}]
  action :create
end
