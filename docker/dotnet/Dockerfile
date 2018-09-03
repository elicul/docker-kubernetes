FROM microsoft/dotnet:latest

ENV MS_NAME=hello_world
ENV PORT=5000

ADD ${MS_NAME} /opt/${MS_NAME}
ADD appsettings.json /opt/${MS_NAME}
ADD NuGet.Config /opt/${MS_NAME}

WORKDIR /opt/${MS_NAME}

RUN dotnet restore && dotnet build

EXPOSE ${PORT}

ENTRYPOINT ["dotnet", "run"]