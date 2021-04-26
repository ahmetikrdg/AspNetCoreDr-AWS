


FROM mcr.microsoft.com/dotnet/sdk:3.1
WORKDIR /app
COPY . .

RUN dotnet restore
RUN dotnet publish AspNetCoreDr.csproj -c Release -o out

WORKDIR out
ENV ASPNETCORE_URLS="http://*:4500"

EXPOSE 4500
ENTRYPOINT ["dotnet","AspNetCoreDr.dll"]