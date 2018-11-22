# Start the Container
resource "docker_container" "container_id" {
  name  = "${var.name}"
  image = "${var.image}"
  hostname = "${var.host_name}"

  ports {
    internal = "${var.int_port}"
    external = "${var.ext_port}"
  }
}
