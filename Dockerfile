FROM microsoft/powershell:ubuntu16.04

COPY run.ps1 /run/run.ps1

VOLUME /pester
WORKDIR /pester

ENTRYPOINT [ "pwsh", "-f", "/run/run.ps1" ]
CMD ["."]
