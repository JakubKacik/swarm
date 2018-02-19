FROM microsoft/dotnet

COPY . /app

WORKDIR /app

RUN dotnet restore
RUN dotnet build

EXPOSE 5000/tcp

ENV ASPNETCORE_ENVIRONMENT docker

ENTRYPOINT dotnet run