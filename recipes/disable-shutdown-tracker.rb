#
# Cookbook Name:: windowshacks
# Recipe:: disable-shutdown-tracker
# Author:: Julian C. Dunn (<jdunn@getchef.com>)
#
# Copyright 2014, Chef Software, Inc.
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

registry_key 'HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Reliability' do
  values [
    {
      :name => 'ShutdownReasonUI',
      :type => :dword,
      :data => 0
    },
    {
      :name => 'ShutdownReasonOn',
      :type => :dword,
      :data => 0
    }
  ]
end
