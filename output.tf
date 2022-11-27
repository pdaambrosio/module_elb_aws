output "elb_dns" {
  description = "The DNS name of the load balancer."
  value = aws_lb.lb-instances.dns_name
}
