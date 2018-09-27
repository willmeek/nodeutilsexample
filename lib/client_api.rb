require 'cisco_node_utils'

# Create a connection to the following nodes:
# - 'default' device defined in the cisco_node_utils.yaml file
# - 'n9k' device defined in the cisco_node_utils.yaml file
client1 = Cisco::Client.create()
# client2 = Cisco::Client.create('n9k')
# Warning: Make sure to exclude devices using the 'no_proxy' environment variable
# to ensure successful remote connections.

# Add runtime configuration for remote device and connect
env = { host: '10.20.30.40', port: nil, username: 'admin', password: 'password', cookie: nil }
Cisco::Environment.add_env('remote', env)
client3 = Cisco::Client.create('remote')

# Use connections to get and set device state.
client1.set(values: 'feature vtp')
client1.set(values: 'vtp domain myclientcompany.com')
puts client1.get(command: 'show vtp status | inc Domain')
#
# puts client2.get(command: 'show version')
puts client3.get(command: 'show version')