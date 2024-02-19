resource "oci_core_vcn" "vcn" {
  cidr_blocks    = ["10.0.0.0/16","11.0.0.0/16"]
  dns_label      = "vcn"
  compartment_id = oci_identity_compartment.caftk-compartment.id
  display_name   = "vcn"
}

output "vcn_id" {
  value = oci_core_vcn.vcn.id
}

