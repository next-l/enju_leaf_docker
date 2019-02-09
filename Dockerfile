FROM ruby:2.5
LABEL maintainer="Kosuke Tanabe <nabeta@fastmail.fm>"
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /enju
WORKDIR /enju
COPY Gemfile /enju/Gemfile
COPY Gemfile.lock /enju/Gemfile.lock
COPY . /enju
RUN useradd -m enju && chown -R enju /enju
USER enju
RUN bundle install -j4
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
