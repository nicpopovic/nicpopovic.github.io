FROM jekyll/jekyll:4.2.0

# Install the necessary Jekyll dependencies
WORKDIR /srv/jekyll
COPY . /srv/jekyll

# Bundle install gems
RUN bundle install

EXPOSE 4000

# Command to serve the site
CMD ["jekyll", "serve", "--host", "0.0.0.0"]
