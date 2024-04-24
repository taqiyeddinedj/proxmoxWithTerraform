### BEFORE YOU START
The cloud init template must be created in advance, the VMs will use it to create a full clone of it

### Download the ubuntu cloud image from the official site
* #### Can be found here: [Cloud init image link](https://cloud-images.ubuntu.com/)

* #### Upload it to your proxmox

* #### Create the cloud-init template

### Run the cloud-init script

```./cloudinit.sh```
The script will create the VM via the CLI, 
* #### Create the Cloud-Init template

### Make the necessary change for your customized cloud-init (Cpu,Ram,...)

## terraform init
### Don't Forget
Yes, by now you must create the api_token_id from the proxmox GUI
Add the token and it's secret inside a new file called secret.tfvars
NOTE: Terraform need privileges so attache 'Administrator' role to the token
## last command
``` terraform apply -var-file="secret.tfvars" ```