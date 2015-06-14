FROM google/golang

ADD ./docker/go-build /bin/go-build
ADD ./docker/go-run /bin/go-run
RUN chmod 755 /bin/go-run /bin/go-build

RUN curl https://yt-dl.org/latest/youtube-dl -o /bin/youtube-dl && \
    chmod a+rx /bin/youtube-dl

RUN mkdir /steamerDataDir
WORKDIR /gopath/src/app

VOLUME ["/steamerDataDir"]

ADD . /gopath/src/app/
RUN /bin/go-build

EXPOSE 8080
CMD []
ENTRYPOINT ["/bin/go-run"]
