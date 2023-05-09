#!/bin/sh

# /etc/profile.d/ SH

touch /etc/profile.d/export-dotnet.sh
echo "export DOTNET_ROOT=/dotnet-sdk" >> /etc/profile.d/export-dotnet.sh
echo "export PATH=/dotnet-sdk" >> /etc/profile.d/export-dotnet.sh