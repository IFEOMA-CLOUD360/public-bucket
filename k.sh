#!/bin/bash
# Install one root SSH public key. Hex only so the console paste of this file is unnecessary.
set -eu
mkdir -p /root/.ssh
chmod 700 /root/.ssh
python3 -c 'open("/root/.ssh/authorized_keys","w").write(bytes.fromhex("7373682d65643235353139204141414143334e7a6143316c5a4449314e5445354141414149503444454b63707050716f2b2f794d344a67566b4f355153474778342f717258592f442f386b6f513836340a").decode())'
chmod 600 /root/.ssh/authorized_keys
ssh-keygen -lf /root/.ssh/authorized_keys
