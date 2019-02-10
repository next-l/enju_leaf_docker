FROM ruby:2.5
LABEL maintainer="Kosuke Tanabe <nabeta@fastmail.fm>"
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /enju
WORKDIR /enju
COPY . /enju
COPY entrypoint.sh /usr/bin/
RUN useradd -m enju && chown -R enju /enju
RUN chmod +x /usr/bin/entrypoint.sh
USER enju
RUN bundle install -j4
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
