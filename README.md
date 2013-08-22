Windows Hacks Cookbook
======================

Utility recipes to make life on Windows easier.

Requirements
============

Operating Systems
-----------------

* Microsoft Windows 2003
* Microsoft Windows 2003R2
* Microsoft Windows 2008
* Microsoft Windows 2008R2
* Microsoft Windows 2012
* Microsoft Windows 2012R2 

Other Windows variants may work.

Attributes
----------

#### windowshacks::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['windowshacks']['logofile']</tt></td>
    <td>String</td>
    <td>Logo for the custom BMP. Must be 120x120 pixels.</td>
    <td><tt>opscode-120x120.bmp</tt></td>
  </tr>
  <tr>
    <td><tt>['windowshacks']['manufacturer']</tt></td>
    <td>String</td>
    <td>Name of the "OEM Manufacturer"</td>
    <td><tt>Opscode, Inc.</tt></td>
  </tr>
  <tr>
    <td><tt>['windowshacks']['supporthours']</tt></td>
    <td>String</td>
    <td>Support hours for the OEM Manufacturer</td>
    <td><tt>24x7</tt></td>
  </tr>
  <tr>
    <td><tt>['windowshacks']['supportphone']</tt></td>
    <td>String</td>
    <td>Support phone for the OEM Manufacturer</td>
    <td><tt>206-508-4799</tt></td>
  </tr>
  <tr>
    <td><tt>['windowshacks']['supporturl']</tt></td>
    <td>String</td>
    <td>Website for the OEM Manufacturer</td>
    <td><tt>http://www.opscode.com/</tt></td>
  </tr>
</table>

Usage
=====

Documentation to come.

Contributing
============

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
===================

Author:: Julian C. Dunn (<jdunn@opscode.com>)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
Authors: TODO: List authors
