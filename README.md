# module_elb_aws
Terraform module to create Elastic Load Balance on AWS

<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Requirements

No requirements.
## Usage
Basic usage of this module is as follows:
```hcl
module "example" {
	 source  = "<module-path>"

	 # Required variables
	 subnet_id  = 
	 tg_instances_id  = 
	 tg_vpc_id  = 

	 # Optional variables
	 extra_tags  = {}
	 lb_internal  = false
	 listener_protocol  = "TCP"
	 listerner_port  = 80
	 listerner_type  = "forward"
	 prefix  = "webapp"
	 tg_instances_port  = 80
	 tg_number_instances  = 2
	 tg_port  = 80
	 tg_protocol  = "TCP"
	 type_loadbalancer  = "network"
}
```
## Resources

| Name | Type |
|------|------|
| [aws_alb_target_group_attachment.tg-instances-attachement](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_target_group_attachment) | resource |
| [aws_lb.lb-instances](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.listener-intances](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_target_group.tg-instances](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | value of the tags to be added to the resources | `map(any)` | `{}` | no |
| <a name="input_lb_internal"></a> [lb\_internal](#input\_lb\_internal) | If true, the LB will be internal. | `bool` | `false` | no |
| <a name="input_listener_protocol"></a> [listener\_protocol](#input\_listener\_protocol) | The protocol for connections from clients to the load balancer. | `string` | `"TCP"` | no |
| <a name="input_listerner_port"></a> [listerner\_port](#input\_listerner\_port) | The port on which the load balancer is listening. | `number` | `80` | no |
| <a name="input_listerner_type"></a> [listerner\_type](#input\_listerner\_type) | The type of action to perform. | `string` | `"forward"` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | The prefix used for all resources in this example. | `string` | `"webapp"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The ID of the subnet in which the load balancer will be created. | `string` | n/a | yes |
| <a name="input_tg_instances_id"></a> [tg\_instances\_id](#input\_tg\_instances\_id) | The ID of the instances to attach to the target group. | `list(string)` | n/a | yes |
| <a name="input_tg_instances_port"></a> [tg\_instances\_port](#input\_tg\_instances\_port) | The port on which the instances are listening. | `number` | `80` | no |
| <a name="input_tg_number_instances"></a> [tg\_number\_instances](#input\_tg\_number\_instances) | The number of instances to attach to the target group. | `number` | `2` | no |
| <a name="input_tg_port"></a> [tg\_port](#input\_tg\_port) | The port on which the targets are listening. | `number` | `80` | no |
| <a name="input_tg_protocol"></a> [tg\_protocol](#input\_tg\_protocol) | The protocol to use for routing traffic to the targets. | `string` | `"TCP"` | no |
| <a name="input_tg_vpc_id"></a> [tg\_vpc\_id](#input\_tg\_vpc\_id) | The ID of the VPC for the targets. | `string` | n/a | yes |
| <a name="input_type_loadbalancer"></a> [type\_loadbalancer](#input\_type\_loadbalancer) | The type of load balancer to create. The default is application. | `string` | `"network"` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_elb_dns"></a> [elb\_dns](#output\_elb\_dns) | The DNS name of the load balancer. |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->