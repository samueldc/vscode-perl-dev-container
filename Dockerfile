FROM debian:12
RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y perl libanyevent-perl libclass-refresh-perl \
    libcompiler-lexer-perl libdata-dump-perl libio-aio-perl libjson-perl libmoose-perl \
    libpadwalker-perl libscalar-list-utils-perl libcoro-perl libhash-safekeys-perl \
    libtemplate-perl cpanminus \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && cpanm Perl::LanguageServer \
    && cpanm Dancer2
