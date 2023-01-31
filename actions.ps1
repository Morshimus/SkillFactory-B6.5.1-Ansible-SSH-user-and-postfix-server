function ansible {
    param (
        [Parameter(Mandatory=$False)]
        [string]$distr = "Ubuntu-20.04",
        [Parameter(Mandatory=$False)]
        [String]$user = "morsh92",
        [Parameter(Mandatory=$False)]
        [String]$server = "lemp",
        [Parameter(Mandatory=$False)]
        [String]$invFile = "./yandex_cloud.ini",
        [Parameter(Mandatory=$False)]
        [String]$privateKey = "~/.ssh/morsh_bastion_SSH",
        [Parameter(Mandatory=$False,Position=0)]
        [String]$args
    )
    wsl -d $distr -u $user -e ansible $server --inventory-file "$invFile" --private-key $privateKey $args
} 

Set-Alias ansible-playbook ansiblePlaybook
function ansiblePlaybook {
    param (
        [Parameter(Mandatory=$False)]
        [string]$distr = "Ubuntu-20.04",
        [Parameter(Mandatory=$False)]
        [String]$user = "morsh92",        
        [Parameter(Mandatory=$False)]
        [String]$server = "lemp",
        [Parameter(Mandatory=$False)]
        [String]$invFile = "./yandex_cloud.ini",
        [Parameter(Mandatory=$False)]
        [String]$privateKey = "~/.ssh/morsh_bastion_SSH",
        [Parameter(Mandatory=$False)]
        [String]$Playbook = "./provisioning_web_admin.yaml"
    )
    wsl -d $distr -u $user -e ansible-playbook  -i "$invFile" --private-key $privateKey  $Playbook 
} 


Set-Alias ansible-vault ansibleVault
function ansibleVault {
    param (
        [Parameter(Mandatory=$False)]
        [string]$distr = "Ubuntu-20.04",
        [Parameter(Mandatory=$False)]
        [String]$user = "morsh92",
        [Parameter(Mandatory=$False,Position=0)]
        [String]$args
    )
    wsl -d $distr -u $user -e ansible-vault $args
} 