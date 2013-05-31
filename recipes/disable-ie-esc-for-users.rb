#
# Cookbook Name:: windowshacks
# Recipe:: disable-ie-esc-for-admins
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

# Thanks to http://gpyall.com/archives/disable-enable-the-internet-explorer-enhanced-security-configuration-for-users-non-admins-with-group-policy/

registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}' do
  values [{
    :name => 'IsInstalled',
    :type => :dword,
    :data => 0
  }]
  action :create
end
