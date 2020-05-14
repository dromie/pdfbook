#target: pdfbook
FROM ubuntu:18.04
RUN apt-get update && apt-get install -y python3 texlive-extra-utils
RUN apt-get install -y curl
RUN curl https://raw.githubusercontent.com/jenom/pdfbook2/master/pdfbook2/pdfbook2 -o /bin/pdfbook2
VOLUME /src
WORKDIR /src
ENTRYPOINT ["pdfbook2"]
