# escape=`

FROM mcr.microsoft.com/dotnet/sdk:6.0
LABEL org.opencontainers.image.source https://github.com/rajyraman/power-platform-cli-container
LABEL org.opencontainers.image.documentation https://github.com/rajyraman/power-platform-cli-container/README.md
LABEL org.opencontainers.image.authors Natraj Yegnaraman
LABEL org.opencontainers.image.title Power Platform CLI Container
LABEL org.opencontainers.image.description This image helps you to use Power Platform CLI inside a container

RUN apt-get update && apt-get -y install nuget
WORKDIR /usr/src/

RUN apt-get update `
    && apt-get -y install nuget `
    && nuget install Microsoft.PowerApps.CLI.Core.linux-x64 -o /usr/local/bin `
    && cp /usr/local/bin/Microsoft.PowerApps.CLI.Core.linux*/tools/. /usr/local/bin -r `
    && chmod u+x /usr/local/bin/pac

#RUN powershell "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));`
#    Register-PackageSource -ProviderName Nuget -Name Nuget -Location https://www.nuget.org/api/v2 -Confirm:$false -Verbose -Force;`
#    choco install nodejs --force --confirm;`
#    choco install netfx-4.6.2-devpack --force --confirm"