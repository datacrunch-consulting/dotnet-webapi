# Use tag 5.0-alpine for Linux or 5.0-nanoserver-1909 for Windows
FROM mcr.microsoft.com/dotnet/sdk:5.0-nanoserver-1909

WORKDIR /webapi

EXPOSE 5000 5001

COPY bin/Debug/netcoreapp5.0/publish ./

ENTRYPOINT ["dotnet", "webapi.dll"]