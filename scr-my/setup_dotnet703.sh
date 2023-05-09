#!/bin/bash

# .NET install

mkdir /.tmp && cd /.tmp 

wget https://download.visualstudio.microsoft.com/download/pr/ebfd0bf8-79bd-480a-9e81-0b217463738d/9adc6bf0614ce02670101e278a2d8555/dotnet-sdk-7.0.203-linux-x64.tar.gz

mkdir -p /dotnet-sdk
tar zxf /.tmp/dotnet-sdk-7.0.203-linux-x64.tar.gz -C /dotnet-sdk