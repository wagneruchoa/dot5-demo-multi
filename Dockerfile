#Estagio 1 - base
FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
RUN mkdir /app
WORKDIR /app
EXPOSE 80/tcp

#Estagio 2 - publish
FROM mcr.microsoft.com/dotnet/sdk:5.0 AS publish
WORKDIR /app
COPY sicom-demo-dot5.csproj .
RUN dotnet restore
COPY . .
RUN dotnet publish -c Release -o dist

#Estagio 3 - final
FROM base AS final
WORKDIR /dist
COPY --from=publish /app/dist .
ENTRYPOINT ["dotnet","sicom-demo-dot5.dll"]
