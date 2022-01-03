terraform {
  required_version = ">= 0.13.1" # see https://releases.hashicorp.com/terraform/
}

locals {
  instance_name = format("%s-%s", var.instance_name, var.suffix)
  region        = data.google_client_config.google_client.region
  zone          = format("%s-%s", local.region, var.zone)
  network_tags  = tolist(toset(var.network_tags))
  name_static_vm_ip = format("%s-ext-ip-%s", var.instance_name, var.suffix)
  sa_id = format("%s-sa-%s", var.instance_name, var.suffix)
}

resource "google_service_account" "gce_sa" {
  account_id   = local.sa_id
  display_name = local.sa_id

  timeouts {
    create = var.sa_timeout
  }
}

// creating new I am Member with spanner_role
resource "google_project_iam_member" "spanner_role" {
  role   = "roles/spanner.viewer"
  member = "serviceAccount:${google_service_account.gce_sa.email}"
}

data "google_client_config" "google_client" {}
