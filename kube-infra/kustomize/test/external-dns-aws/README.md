IAM Policy
The following IAM Policy document allows ExternalDNS to update Route53 Resource Record Sets and Hosted Zones. You'll want to create this Policy in IAM first. In our example, we'll call the policy AllowExternalDNSUpdates (but you can call it whatever you prefer).

If you prefer, you may fine-tune the policy to permit updates only to explicit Hosted Zone IDs.

{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "route53:ChangeResourceRecordSets"
      ],
      "Resource": [
        "arn:aws:route53:::hostedzone/*"
      ]
    },
    {
      "Effect": "Allow",
      "Action": [
        "route53:ListHostedZones",
        "route53:ListResourceRecordSets"
      ],
      "Resource": [
        "*"
      ]
    }
  ]
}
