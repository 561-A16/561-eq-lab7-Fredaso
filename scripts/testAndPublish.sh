#!bin/bash
set -e
dotnet restore
dotnet test webapp.unittests
dotnet publish webapp -o /root/publish