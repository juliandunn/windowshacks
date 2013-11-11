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

# Will signal in the UI that a reboot is necessary. We could also
# notify the Chef Windows reboot handler

registry_key 'HKEY_LOCAL_MACHINE\Microsoft\Windows\CurrentVersion\Policies\System' do
  values [{
    :name => 'EnableLUA',
    :type => :dword,
    :data => 0
  }]
  action :create
end
