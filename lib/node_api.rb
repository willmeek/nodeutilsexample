require 'cisco_node_utils'

# Create a connection to the following:
# - 'default' device defined in the cisco_node_utils.yaml
node = Cisco::Node.instance()
# OR:
# - 'n9k' device defined in the cisco_node_utils.yaml file
# Cisco::Environment.default_environment_name = 'n9k'
# node = Cisco::Node.instance()

# Warning: Make sure to exclude devices using the 'no_proxy' environment variable
# to ensure successful remote connections.

# Use connection to get and set device state.
node.config_set('feature', 'vtp', state: '')
node.config_set('vtp', 'domain', domain: 'mynodecompany.com')
puts node.config_get('vtp', 'domain')