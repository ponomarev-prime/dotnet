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
root@d134d202e55a:/proj_x# dotnet --info
.NET SDK:
 Version:   7.0.203
 Commit:    5b005c19f5

Runtime Environment:
 OS Name:     ubuntu
 OS Version:  22.04
 OS Platform: Linux
 RID:         ubuntu.22.04-x64
 Base Path:   /root/dotnet/sdk/7.0.203/

Host:
  Version:      7.0.5
  Architecture: x64
  Commit:       8042d61b17

.NET SDKs installed:
  7.0.203 [/root/dotnet/sdk]

.NET runtimes installed:
  Microsoft.AspNetCore.App 7.0.5 [/root/dotnet/shared/Microsoft.AspNetCore.App]
  Microsoft.NETCore.App 7.0.5 [/root/dotnet/shared/Microsoft.NETCore.App]

Other architectures found:
  None

Environment variables:
  DOTNET_ROOT       [/root/dotnet]

global.json file:
  Not found
```

## Docker
```
PS C:\Users\ponom\Documents\CODE\dotnet> docker build -t my-dotnet-xxx --progress=plain -f Dockerfile.dotnet .
```

```
dotnet:
    build:
      context: .
      dockerfile: Dockerfile.dotnet
    environment:
      - ASPNETCORE_ENVIRONMENT=Development
      - DOTNET_ROOT=$HOME/dotnet
      - PATH=$PATH:$HOME/dotnet
    volumes:
      - ./proj_x:/proj_x
    command: dotnet watch --project newweb run --urls "http://0.0.0.0:8020/" 
```

---

??

export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet