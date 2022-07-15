FROM elixir:1.13

RUN apt-get update && \
    apt-get install -y inotify-tools

WORKDIR /app
COPY . /app

RUN mix local.hex --force && \
    mix local.rebar --force && \
    mix deps.get && \
    mix compile