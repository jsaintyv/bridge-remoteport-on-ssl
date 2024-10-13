# Goal 
The aim is to enable remote control of a consultation station from home

I am careful not to use any third party tools and keep the minimum of technical dependencies. I do not use any other dependencies than what is available in a standard Ubuntu, git for windows, and docker installation

# Prepare to install
On server & client , install "git for windows": https://gitforwindows.org/

On server , you need to install docker: https://docs.docker.com/desktop/install/windows-install/

Clone source from github on server and on client:
```bash
git clone https://github.com/jsaintyv/bridge-remoteport-on-ssl.git
```

# Install
On client, execute : 
```bash
client\generateKey.bat
```

This will generate secret & secret.pub.  
secret contains private key. Never send it by mail and never copy it anywhere else

secret.pub is your public key. Copy on folder RemoteServer/secret/secret.pub

On server, execute: 
```bash
RemoteServer\launch.bat
```

On client, copy configure.bat.template to a file configure.bat

Edit it and set it.

_myboxname_ & _443_ should be replace by the name of your internet box and the opened port.

```bash
set TARGETHOST=myboxname
set TARGETPORT=443
```

On client, execute:
```bash
client\remoteBridge.bat
```




