# Android Schtuff
export PATH="$PATH:/Users/$(whoami)/adt/sdk/platform-tools"
export PATH="$PATH:/Users/$(whoami)/adt/sdk/tools"
export ANDROID_HOME="/Users/$(whoami)/adt/sdk"
alias adbtime="adb shell date `date -u +%s`";

### perforce
export P4PORT="127.0.0.1:1666"
export P4USER="$(whoami)"
export P4CLIENT="user-project"

### packer.io
export PATH="/usr/local/packer:$PATH"

# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_75.jdk/Contents/Home"

# AWS EC2 Tools Setup
export PATH="$PATH:/usr/local/ec2-api-tools-1.6.10.0/bin"
# export AWS_CREDENTIAL_FILE="~/.aws/config"
export EC2_HOME="/usr/local/ec2-api-tools-1.6.10.0"
complete -C aws_completer aws

# Aliases ######################################################################

# Chef DK
alias chefdk='eval "$(chef shell-init bash)"'

# Vagrant
alias vr='rm .vagrant/machines/default/vmware_fusion/synced_folders'

# General
alias svi=vim;
alias sshv="ssh vagrant@127.0.0.1 -p 2222";
alias listen="netstat -an | grep LISTEN";
alias hibon="sudo pmset -a hibernatemode 1";
alias hiboff="sudo pmset -a hibernatemode 3";
alias md5='md5 -r'
alias md5sum='md5 -r'

source ~/.git-completion.bash

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
