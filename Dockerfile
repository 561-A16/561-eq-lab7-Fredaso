FROM ymazieres/dotnet:compile

COPY /scripts/init.sh /src/init.sh
RUN chmod +x /src/init.sh

EXPOSE 5000
ENV ASPNETCORE_URLS http://+:5000

ENTRYPOINT ["sh", "../init.sh"]

COPY src /src

WORKDIR /src/webapp