FROM ruby:2.7.1
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client yarn
RUN mkdir /rails_on_docker
WORKDIR /rails_on_docker
COPY Gemfile /rails_on_docker/Gemfile
COPY Gemfile.lock /rails_on_docker/Gemfile.lock
RUN gem install bundler -v '2.1.4'
RUN bundle install
RUN yarn install --check-files
COPY . /rails_on_docker
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
