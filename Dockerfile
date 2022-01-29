FROM rust:1.58.1-slim-bullseye

ENV CARGO_TARGET_DIR=/tmp/target \
  DEBIAN_FRONTEND=noninteractive \
  LC_CTYPE=ja_JP.utf8 \
  LANG=ja_JP.utf8

RUN apt-get update \
  && apt-get install -y -q \
  ca-certificates \
  locales \
  libpq-dev \
  gnupg \
  apt-transport-https\
  libssl-dev \
  pkg-config \
  curl \
  build-essential \
  git \
  && echo "ja_JP UTF-8" > /etc/locale.gen \
  && locale-gen

RUN echo "install rust tools" \
  && rustup component add clippy \
  && cargo install cargo-watch cargo-make \
  && chmod go-w /usr/local/cargo /usr/local/cargo/bin

WORKDIR /app

COPY ./Cargo.toml Cargo.toml
