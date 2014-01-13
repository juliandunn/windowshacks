#
# Cookbook Name:: windowshacks
# Recipe:: xp_hypervisor_core_fix.rb
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
# TODO: Add recipe to install hypervisor cores fix on XP and 2003/2003R2
# This hotfix corrects a bug wherein the # of cores reported to a hypervisor
# like VirtualBox or VMWare are wrong and hence are wrong for Ohai.
#
# MS KB #: 932370
#
# x86: http://hotfixv4.microsoft.com/Windows%20Server%202003/sp3/Fix180973/3790/free/311472_ENU_i386_zip.exe
# x64: http://hotfixv4.microsoft.com/Windows%20Server%202003/sp3/Fix180973/3790/free/312795_ENU_x64_zip.exe
