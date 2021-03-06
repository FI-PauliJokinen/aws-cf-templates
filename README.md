[![Build Status](https://travis-ci.org/widdix/aws-cf-templates.svg?branch=master)](https://travis-ci.org/widdix/aws-cf-templates)

# DevOps HA Jenkins 
based on [cloudonaut.io](https://cloudonaut.io/templates-for-aws-cloudformation/) project. 

DevOps HA Jenkins creation process goes as follows:

1. Create VPC
   [link here](https://eu-west-1.console.aws.amazon.com/cloudformation/home?region=eu-west-1#/stacks/create/review?templateURL=https://raw.githubusercontent.com/FI-PauliJokinen/aws-cf-templates/master/vpc/vpc-2azs.yaml&stackName=devops-vpc&ClassB=0)
   
   Select B class number that doesn't conflict your current network infra if you are sharing IPs with your on premise infra
   
   Click next until there is confirmation checkbox at the bottom left corner to confirm it is OK to create IAM resoures if needs be, check that
   
   Click confirm and the stack creation starts

2. Create HA Jenkins 
   [link here](https://eu-west-1.console.aws.amazon.com/cloudformation/home?region=eu-west-1#/stacks/create/review?templateURL=https://raw.githubusercontent.com/FI-PauliJokinen/aws-cf-templates/master/jenkins/dev-ops-jenkins2-ha.yaml&stackName=devops-ha-jenkins&parentVPCStack=devops-vpc)
   
   Give the name of the VPN created in the step 1.

   Select password to login to Jenkins, which you will remember
   
   Click next until there is confirmation checkbox at the bottom left corner to confirm it is OK to create IAM resoures if needs be, check that
   
   Click confirm and the stack creation starts


The direct links above assume you want to create DevOps setup at europe-west-1 region i.e. Ireland


# Free Templates for AWS CloudFormation
Find the documentation for the **latest stable release** here: https://templates.cloudonaut.io/en/stable/

Find the documentation for the **unstable master branch** here: https://templates.cloudonaut.io/en/latest/

## Related projects

### widdix CLI
widdix, a CLI tool to manage Free Templates for AWS CloudFormation.

Learn more: https://github.com/widdix/aws-cf-templates-cli

### cfn-modules
Easy-going CloudFormation: Modular, production ready, open source.

Learn more: https://github.com/cfn-modules/docs

## License
All templates are published under Apache License Version 2.0.

## Help needed?
You will probably find an answer to your question on [Stack Overflow](https://stackoverflow.com/questions/tagged/amazon-cloudformation). If not, use the tag `amazon-cloudformation` to post your question, and the chances are high that we or someone from the community will point you in the right direction. We are not able to answer your questions via email or the project's issue tracker.

## Sponsor a feature or bug fix
Are you in need of a feature or does a bug cause you sleepless nights? Please let us know by using the project's [issue tracker](https://github.com/widdix/aws-cf-templates/issues). We work on bug fixes and new features as time permits. Are you in need of an urgent bug fix or important feature request? [Contact us](mailto:hello@widdix.net) to sponsor a feature or bug fix.

## Training and Consulting
Do you want to accelerate your start with AWS CloudFormation and our templates? We do offer remote and on-site training for you and your team. Are you looking for guidance on how to use or adapt our templates to your use case? We offer consulting services as well. [Contact us](mailto:hello@widdix.net), and we’ll accelerate your project.

## About
A [cloudonaut.io](https://cloudonaut.io/templates-for-aws-cloudformation/) project. Engineered by [widdix](https://widdix.net).
