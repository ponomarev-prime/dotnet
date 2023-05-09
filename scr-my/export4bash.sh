#!/bin/bash

# /etc/bash.bashrc

echo "export DOTNET_ROOT=/dotnet-sdk" >> /etc/bash.bashrc
echo "export PATH=$PATH:/dotnet-sdk" >> /etc/bash.bashrc

# source /etc/bash.bashrc