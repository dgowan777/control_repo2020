class role::master_server {
  include profile::base
  include profile::agent_nodes
  include profile::master_hosts
}
