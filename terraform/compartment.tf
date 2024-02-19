resource "random_string" "random" {
  length           = 3
  special          = false
}

resource "oci_identity_compartment" "caftk-compartment" {
    # Required
    compartment_id = var.compartment_ocid
    description = "Compartment for CAF Toolkit"
    name = "cpm_caftk_${random_string.random}"
}