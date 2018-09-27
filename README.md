# Node Utils simple examples

## Overview

Simple examples of using Cisco Node Utils

## Execution

Install bundle

`bundle install`

Create a `~/cisco_node_utils.yaml` of the following format:

```
default:
     host: 10.20.30.40
     username: admin
     password: password
 ```
     
On `lib/client_api.rb` edit the env to match your Nexus device

`env = { host: '10.20.30.40', port: nil, username: 'admin', password: 'password', cookie: nil }
`

### Execute

#### Client example

Run either

```
rake clientapi

```
or
```
ruby ./lib/client_api.rb
```

```
VTP Domain Name                 : myclientcompany.com
Cisco Nexus Operating System (NX-OS) Software
TAC support: http://www.cisco.com/tac
Documents: http://www.cisco.com/en/US/products/ps9372/tsd_products_support_series_home.html
Copyright (c) 2002-2018, Cisco Systems, Inc. All rights reserved.
The copyrights to certain works contained herein are owned by
other third parties and are used and distributed under license.
Some parts of this software are covered under the GNU Public
License. A copy of the license is available at
http://www.gnu.org/licenses/gpl.html.

Nexus 9000v is a demo version of the Nexus Operating System

Software
  BIOS: version
  NXOS: version 9.2(1)
  BIOS compile time:
  NXOS image file is: bootflash:///nxos.9.2.1.bin
  NXOS compile time:  7/17/2018 16:00:00 [07/18/2018 00:21:19]


Hardware
  cisco Nexus9000 9000v Chassis
  Intel(R) Core(TM) i7-4980HQ CPU @ 2.80GHz with 8166488 kB of memory.
  Processor Board ID 9ANYSVMD4XU

  Device name: n9kv
  bootflash:    3509454 kB
Kernel uptime is 1 day(s), 19 hour(s), 27 minute(s), 21 second(s)

Last reset
  Reason: Unknown
  System version:
  Service:

plugin
  Core Plugin, Ethernet Plugin

Active Package(s):

```

#### Node example


```
rake nodeapi

```
or
```
ruby ./lib/node_api.rb
```

```
  mynodecompany.com
  ```
 
 ### Reference
 
 See also https://github.com/cisco/cisco-network-node-utils