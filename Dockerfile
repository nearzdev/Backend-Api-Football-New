# Runtime ASP.NET Core 8 (sem etapa de build)
FROM mcr.microsoft.com/dotnet/aspnet:8.0

# Pasta de trabalho
WORKDIR /app

# Copia tudo o que está no repo (seu "publish") para dentro da imagem
COPY . ./

# Render define a variável PORT. Garanta que o Kestrel escute nela.
ENV ASPNETCORE_URLS=http://0.0.0.0:${PORT}

# Útil para rodar localmente (opcional)
EXPOSE 8080

# Nome da sua DLL principal (case-sensitive)
ENTRYPOINT ["dotnet", "FootballAnalysis.Api.dll"]
