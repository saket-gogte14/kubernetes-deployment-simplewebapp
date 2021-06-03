#Picking the latest ruby base image from docker.io
FROM ruby:latest

RUN mkdir -m 775 /opt/rubyapp
RUN chown -R testruby:testgroup /opt/rubyapp

#Marking the new directory as work directory
WORKDIR /opt/rubyapp

#Copying the ruby code to the new directory
ADD webserver.rb /opt/rubyapp

#Exposing the Port to make it run on localhost
EXPOSE 80
#Switching to the user
USER testruby
#Running the Ruby code
CMD ruby webserver.rb
