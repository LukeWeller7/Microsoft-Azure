# How to create a Virtual Machine on Azure


1. Starting on the Azure homepage, go to the searchbar and type in "virtual machines" or "vm" and select the virtual machines option under services.
![](images/azure-vm-1.png)
2. In virtual machines, select create and Azure virtual machine.
![](images/azure-vm-2.png)
3. Select tech254 as resource group, naming convention for VM name
![](images/azure-vm-3.png)
4. For size, ensure you have Standard_B1s and change username to adminuser. For ssh public key select use exsisting one and select your key. For ports select 22 and 80
![](images/azure-vm-4.png)
5. Select Standard SSD
![](images/azure-vm-5.png)
6. Select your VN and pick public subnet
![](images/azure-vm-6.png)
7. Select User Data and enter user data
![](images/azure-vm-7.png)
8. Type owner and your first name
![](images/azure-vm-8.png)
9. After review select create.
![](images/azure-vm-9.png)