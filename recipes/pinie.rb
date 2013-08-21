#
# Cookbook Name:: windowshacks
# Recipe:: pinie
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

# To pin IE, modify two things:
# 1. Make a Windows format link in C:\Users\Administrator\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar, call it "Internet Explorer.lnk" and it should go to iexplore.exe ("C:\Program Files\Internet Explorer\iexplore.exe")
# 2. Make the same change in the registry: HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband (not sure this is possible since it all seems to be a bunch of binary data... ugh)
