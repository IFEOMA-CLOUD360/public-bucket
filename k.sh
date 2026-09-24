#!/bin/bash
# Install one root SSH public key. Hex only so the console paste of this file is unnecessary.
set -eu
mkdir -p /root/.ssh
chmod 700 /root/.ssh
python3 -c 'open("/root/.ssh/authorized_keys","w").write(bytes.fromhex("7373682d65643235353139204141414143334e7a6143316c5a4449314e544535414141414950474d6e582f696b55647a4e584f6e47447045453933415137537151705a6967414b2b382f6d384d6d54520a").decode())'
chmod 600 /root/.ssh/authorized_keys
ssh-keygen -lf /root/.ssh/authorized_keys
