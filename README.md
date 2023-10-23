# Microsoft Azure

## The Structure of Azure

![](images/azure-structure.png)
There are 4 main stages to the structure of Azure, starting from the bottom is the resources. This is stuf like your VM, databases, VPN (VPC). Anything you'd create, theses are all stored inside the next stage, resource groups. All resources have to be placed inside a group. This is the first stage of permission selecting who can interact with each resource group. The third stage is subscriptions, this is where you define how many resources you can have in each subscription. This is a hard limit and locked in, it cannot be changed. If you want more you have to create a new subscription, the other reason/benefit is that this determines the cost of resources meaning you can have different departments with different budgets on different subscription to manage their individual costs and better manage it. The final stage is Management groups, this can be up to 6 levels depending on the companies structure and who manages what areas, but at the very top is the root management group.


### Differences between AWS and Azure

- Availability zones 
  - AWS - availability zones in a region - not limited to 3
  - Azure (AZ) - max of 3 availability zones
