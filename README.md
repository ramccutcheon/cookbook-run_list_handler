Description
===========

Installs/Configures run_list_handler

After a successful chef-run, use handler to change run_list. Useful for non-idempotent ordered operations.

Requirements
============

* Chef 11.0+

chef\_handler
----

Installs/Configures chef-handler

Attributes
==========

* `default['run_list_handler']['post_boot_runlist']` - If set will redefine `node['run_list']` to it's value.

Usage
=====

```json
"run_list": [
    "recipe[run_list_handler]"
]
```

default
----

Installs/Configures run_list_handler


License and Author
==================

Author:: John tran (<jhtran@att.com>)

Copyright 2014, John Tran

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
