#!/bin/bash
aws cloudwatch put-metric-alarm --alarm-name "High-CPU-Usage" \
    --metric-name CPUUtilization --namespace AWS/EC2 \
    --statistic Average --threshold 80 \
    --comparison-operator GreaterThanThreshold \
    --dimensions Name=InstanceId,Value=i-1234567890abcdef0 \
    --evaluation-periods 2 --period 60 --alarm-actions arn:aws:sns:us-east-1:1234567890:my-topic
echo "CloudWatch alarm for High CPU Usage created!"
