FROM microsoft/dotnet:latest

COPY . /home/WorkflowBuilder/
COPY NuGet.Config /home/WorkflowBuilder

WORKDIR /home/WorkflowBuilder/EBE.Ships.WorkflowBuilder.Core.API

RUN dotnet restore && dotnet build

EXPOSE 8080

ENTRYPOINT ["dotnet", "run", "--urls", "http://0.0.0.0:8080"]