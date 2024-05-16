# Autoscaling Notifications
## AWS Bug for SNS Topic: https://stackoverflow.com/questions/62694223/cloudwatch-alarm-pending-confirmation
## Due to that create SNS Topic with unique name 

# Create Random Pet Resource
resource "random_pet" "this" {
  length = 2
}

## SNS - Topic
resource "aws_sns_topic" "this" {
  name = "ec2-private-sns-topic-${random_pet.this.id}"
}

## SNS - Subscription
resource "aws_sns_topic_subscription" "this" {
  topic_arn = aws_sns_topic.this.arn
  protocol  = "email"
  endpoint  = "majamex123@gmail.com"
}

## Create Autoscaling Notification Resource
resource "aws_autoscaling_notification" "this" {
  group_names = [aws_autoscaling_group.this.id]
  notifications = [
    "autoscaling:EC2_INSTANCE_LAUNCH",
    "autoscaling:EC2_INSTANCE_TERMINATE",
    "autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
    "autoscaling:EC2_INSTANCE_TERMINATE_ERROR",
  ]
  topic_arn = aws_sns_topic.this.arn 
}