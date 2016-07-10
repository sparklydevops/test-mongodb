# test-mongodb Cookbook

The MongoDB Cookbook installs mongodb.

## Scope

## Requirements

* Chef 12.5.0 or higher

## Platform Support 

The following platform has been tested with Test Kitchen:

* centos-6.5

## Cookbook Dependecies

* None

Usage

```
depends 'mongodb'
```

Then, in a recipe

```
mongodb_install 'default' do
  action :install
end
```

## Resources Overview

### mongodb_install

The *mongodb_install* installs mongodb and sets up the service up and running.

License & Authors

Author: Jennifer Davis(sparklydevops@gmail.com)
Copyright: 2016, Chef Software, Inc

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

```


