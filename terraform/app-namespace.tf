resource "kubernetes_namespace" "webapp" {
  metadata {
    labels = {
      app: "webapp"
    }
    name = "webapp"
  }
}


resource "aws_route53_record" "app" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "app.${local.domain_name}"
  type    = "A"

  alias {
    name                   = data.kubernetes_service.argocd_server.status[0].load_balancer[0].ingress[0].hostname
    zone_id                = data.aws_elb_hosted_zone_id.main.id
    evaluate_target_health = true
  }
}