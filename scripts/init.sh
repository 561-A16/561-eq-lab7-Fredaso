#!bin/bash
dotnet restore
cd ../webapp.unittests/
dotnet restore
dotnet test
