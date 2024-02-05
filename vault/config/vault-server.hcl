disable_mlock = true
ui            = true
log_level	  = "info"
api_addr	  = "http://0.0.0.0:8200"
disable_clustering	= true

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = "true"
}

storage "file" {
  path = "/vault/files"
}