resource "docker_image" "ubuntu" {
  name = "nginx:latest"
}
resource "docker_container" "ubuntu_container" {
  image = "${docker_image.ubuntu.latest}"
  name  = "ubuntu_container"
}
