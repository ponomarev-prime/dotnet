# .NET

Just for fun!

dotNET in Docker

## dotnet
```
dotnet --info

PS C:\Users\ponom\Documents\CODE\dotnet\proj_x> dotnet new web
Шаблон "Пустой шаблон ASP.NET Core" успешно создан.

dotnet run web

dotnet watch --project . run --urls "http://0.0.0.0:8020/" | http://localhost:8020/
```
```
root@d2cca7de0941:/proj_x# dotnet --info
.NET SDK:
 Version:   7.0.203
 Commit:    5b005c19f5

Runtime Environment:
 OS Name:     ubuntu
 OS Version:  22.04
 OS Platform: Linux
 RID:         ubuntu.22.04-x64
 Base Path:   /dotnet-sdk/sdk/7.0.203/

Host:
  Version:      7.0.5
  Architecture: x64
  Commit:       8042d61b17

.NET SDKs installed:
  7.0.203 [/dotnet-sdk/sdk]

.NET runtimes installed:
  Microsoft.AspNetCore.App 7.0.5 [/dotnet-sdk/shared/Microsoft.AspNetCore.App]
  Microsoft.NETCore.App 7.0.5 [/dotnet-sdk/shared/Microsoft.NETCore.App]

Other architectures found:
  None

Environment variables:
  DOTNET_ROOT       [/dotnet-sdk]

global.json file:
  Not found
```

## Docker

b
```
PS C:\Users\ponom\Documents\CODE\dotnet> docker build -t my-dotnet-xxx --progress=plain -f Dockerfile.dotnet .
```
r
```
PS C:\Users\ponom\Documents\CODE\dotnet> docker run -it -p 8020:8020 --rm my-dotnet-xxx bash
```