log_level = "INFO"
data_dir = "/opt/consul/data"
bind_addr = "0.0.0.0"
client_addr = "0.0.0.0"
advertise_addr = "{{ GetPrivateIP }}"

ui = true
server = true
bootstrap_expect = SERVER_COUNT

retry_join = ["RETRY_JOIN"]
service {
  name = "consul"
}
