This container is based on the official microsoft/powershell Ubuntu 16.04 image with the AzureRM .NET Core package installed for Azure Powershell and Terraform 0.9.4.

Non-interactive usage:

`docker run --rm -v $PWD:/data --workdir=/data 10thmagnitude/terraform-ps <script or powershell command to run>`
`docker run --rm -v $PWD:/data --workdir=/data 10thmagnitude/terraform-ps <script or terraform command to run>`

Interactive Powershell prompt:

`docker run --rm -it -v $PWD:/data --workdir=/data 10thmagnitude/terraform-ps powershell`
