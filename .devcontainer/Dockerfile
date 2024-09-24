FROM debian:12
RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y perl libanyevent-perl libclass-refresh-perl libcompiler-lexer-perl \
    libdata-dump-perl libio-aio-perl libjson-perl libmoose-perl libpadwalker-perl \
    libscalar-list-utils-perl libcoro-perl cpanm \
    && cpanm Perl::LanguageServer