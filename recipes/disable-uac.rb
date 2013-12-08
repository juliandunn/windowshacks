#
# Cookbook Name:: windowshacks
# Recipe:: disable-ie-esc-for-admins
# Author:: Alex Vinyar <alexv@opscode.com>
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

## Powershell for reference
# function Disable-UserAccessControl {
#     Set-ItemProperty -Path registry::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name EnableLUA -Value 0
#     # Write-Host "User Access Control (UAC) has been disabled." -ForegroundColor Green
#     Set-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "ConsentPromptBehaviorAdmin" -Value 00000000
#     # Write-Host "User Access Control (UAC) notification has been disabled." -ForegroundColor Green
#     }
# Disable-UserAccessControl

registry_key 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System' do
  values [
    {
    :name => 'EnableLUA',
    :type => :dword,
    :data => 0
  }]
end

registry_key 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' do
  values [{
    :name => 'ConsentPromptBehaviorAdmin',
    :type => :dword,
    :data => 00000000
  }]
end
