
# Instructions for building VM
This folder contains the files needed to build a virtual machine for REPERTOIRE using Vagrant.
***

#### Contents:

1. **Vagrantfile** - This will load the Ubuntu 14.04 Desktop VM on VirtualBox.
2. **bootstrap.sh**  - The script that will install all the requirements for the tool to run.

#### Requirements:

1. [Vagrant](https://www.vagrantup.com/downloads.html). 
2. [VirtualBox](https://www.virtualbox.org/wiki/Downloads).

#### Installation Steps:
1. Download and install [Vagrant](https://www.vagrantup.com/downloads.html).
2. Download and install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
3. Verify that SSH Authentication is enabled and functioning on the host system.
4. Clone [this repository](https://github.com/SoftwareEngineeringToolDemos/FSE-2012-REPERTOIRE) to your system.
5. Open command prompt/terminal and navigate to the _build-vm_ directory.
6. Run the command "_vagrant up_" to set up and launch the VM. A VirtualBox VM should be launched, as the GUI option has been enabled in Vagrant.
7. For the first launch, allow the provisioning tasks to complete execution. These will install the required software for REPERTOIRE.
8. Verify QT 4.x developer tools by typing: qmake --version

#### Provisioning:

1. Ubuntu Desktop 14.04.
2. QT 4.x 
3. pyuic4 Developer Tools


#### Username and Password

* username: *vagrant*
* password: *vagrant*

#### Acknowledgement

* https://docs.vagrantup.com/v2/provisioning/shell.html
