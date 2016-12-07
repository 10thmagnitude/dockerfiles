This container is based on the official microsoft/powershell Ubuntu 16.04 image but has the AzureRM .NET Core package installed for Azure Powershell.

Non-interactive usage:

`docker run --rm -v $PWD:/data --workdir=/data 10thmagnitude/powershell-azure <script or powershell command to run>`

Interactive Powershell prompt:

`docker run --rm -it -v $PWD:/data --workdir=/data 10thmagnitude/powershell-azure powershell`
