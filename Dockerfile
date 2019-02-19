FROM ruby:2.5
LABEL maintainer="Kosuke Tanabe <nabeta@fastmail.fm>"
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /enju
WORKDIR /enju
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
COPY Gemfile /enju/Gemfile
COPY Gemfile.lock /enju/Gemfile.lock
RUN bundle install -j4
COPY . /enju
RUN useradd -m enju && chown -R enju /enju
USER enju
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
