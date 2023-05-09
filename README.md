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
dotnet tool install -g dotnet-script

export PATH="$PATH:/root/.dotnet/tools"
```

## Docker

build
```
PS C:\Users\ponom\Documents\CODE\dotnet> docker build -t my-dotnet-xxx --progress=plain -f Dockerfile.dotnet .
```
run
```
PS C:\Users\ponom\Documents\CODE\dotnet> docker run -it -p 8020:8020 --rm my-dotnet-xxx bash
```