# Base image
FROM debian:12
# Perl almost basic install
RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y gnupg build-essential \
    perl libanyevent-perl libclass-refresh-perl libcompiler-lexer-perl libdata-dump-perl \
    libio-aio-perl libjson-perl libmoose-perl libpadwalker-perl libscalar-list-utils-perl \
    libcoro-perl libhash-safekeys-perl libtemplate-perl libperl-languageserver-perl \
    cpanminus \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
# Dancer2 install
RUN cpanm Dancer2 Template File::Slurper DBD::SQLite Dancer2::Plugin::Database
