FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.2.1

RUN gem install event_girl_client --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["event_girl"]
CMD ["--help"]
