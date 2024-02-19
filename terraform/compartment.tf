resource "random_string" "random" {
  length           = 3
  special          = false
}

resource "oci_identity_compartment" "caftk-compartment" {
    # Default to root compartment unless specified var.compartment_ocid
    compartment_id = var.compartment_ocid == null ? var.tenancy_ocid : var.compartment_ocid
    description = "Compartment for CAF Toolkit"
    name = "cpm_caftk_${random_string.random}"
}