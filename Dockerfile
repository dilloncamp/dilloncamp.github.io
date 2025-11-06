# Use the official Ruby 2.7 image as the base
FROM ruby:2.7

# Set the working directory inside the container
WORKDIR /srv/jekyll

# Install Jekyll and other required gems
# The --no-document flag prevents installation of documentation, reducing image size
RUN gem install jekyll bundler --no-document

# Expose port 4000 for Jekyll's development server
EXPOSE 4000
EXPOSE 35729

# Define the default command to run when the container starts
# This will serve the Jekyll site
CMD ["jekyll", "serve", "--force_polling", "--host", "0.0.0.0"]