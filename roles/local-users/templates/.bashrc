# SSH

if [ ! -S ~/.ssh/ssh_auth_sock ]; then
	eval `ssh-agent`
	ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi

export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock

# Go

export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin:/opt/go-{{ local.go }}/bin

# Gradle

export PATH=$PATH:/opt/gradle-{{ local.gradle }}/bin

# Java

export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

# Jetbrains

export PATH=$PATH:$HOME/.local/share/JetBrains/Toolbox/bin
export PATH=$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts

# Maven

export M2_HOME=/opt/maven-{{ local.maven }}
export PATH=$PATH:/opt/maven-{{ local.maven }}/bin

# NVM

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
