# builds a new Rails application version 7

FROM ruby:3.2.2-slim as builder

RUN gem install rails -v 7.0.0

WORKDIR /var/app

RUN rails new blog

RUN rails db:create

FROM ruby:3.2.2-slim

COPY --from=builder . .

CMD ["/bin/sh", "rails s"]

EXPOSE 3000
