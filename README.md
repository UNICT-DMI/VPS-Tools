# VPS-Tools
**VPS-Tools** is a script set to automates configuration management and application deployment of [@DMI Bot](https://github.com/UNICT-DMI/Telegram-DMI-Bot).

### System requirements
- Ansible

### How to use
First of all add your ssh key to autorized_key of your remote server:

Step 1 (Generating a new SSH key):
```
$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
Step 2 (Generating Key Pair in remote server):
```
$ mkdir ~/.ssh
$ chmod 700 ~/.ssh
$ ssh-keygen -t rsa -b 4096
```
Step 3 (Uploading the public key to the remote server)
```
$ scp ~/.ssh/id_rsa.pub user@example.com:~/.ssh/uploaded_key.pub
```
Then (in the remote server):
```
$ cat uploaded_key.pub >> ~/.ssh/authorized_keys
```
Also check the /etc/ssh/ssh_config file for the following lines:
```
RSAAuthentication yes
PubkeyAuthentication yes
AuthorizedKeysFile .ssh/authorized_keys
```
If those lines are commented with #, remove those. Then save the file. Now you have to restart the ssh service:
```
$ sudo service ssh restart
```

Add your remote server in /etc/ansible/hosts:
```
[VPS]
example.com
```

Now you can execute main playbook:
```
$ ansible-playbook ansible/main.yml -f 10
```

### License
This open-source software is published under the GNU General Public License (GNU GPL) version 3. Please refer to the "LICENSE" file of this project for the full text.

### Credits
This project is made possible thanks to the contributions of:
- [Davide Carnemolla](https://github.com/daxcpp)

