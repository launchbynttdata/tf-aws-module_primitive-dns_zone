naming_prefix = "demo_test"
zone_name     = "demo-test302164.test.com"
comment       = "Test to create a private hosted zone through terraform"
force_destroy = true
vpc_id        = "123_test"
tags = {
  "demoCostCenter" = "DemoValue"
}