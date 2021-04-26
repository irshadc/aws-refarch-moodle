#!/bin/bash
#starting bastion server
aws autoscaling update-auto-scaling-group --auto-scaling-group-name MoodleAppDemo-bastion-U6QKARE7BW6A-BastionAutoScalingGroup-16QYI95QQC6DH --min-size 1 --desired-capacity 1
#aws autoscaling update-auto-scaling-group --auto-scaling-group-name MoodleAppDemo-efsfilesystem-ST8OZV0SFUAY-AutoScalingGroup-ULWXPH4U3BLB --min-size 1 --desired-capacity 1
aws autoscaling update-auto-scaling-group --auto-scaling-group-name MoodleAppDemo-webnocache-WMHCH2NN2GC0-WebAutoScalingGroup-PTNT8U2XICZK --min-size 1 --desired-capacity 1
aws rds start-db-cluster --db-cluster-identifier moodleappdemo-rds-1f4mpq56bwmr9-databasecluster-k3qk09xa71dn
