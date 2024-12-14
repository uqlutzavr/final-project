resource "kubernetes_namespace" "webapp" {
  metadata {
    labels = {
      app: "webapp"
    }
    name = "webapp"
  }
}
