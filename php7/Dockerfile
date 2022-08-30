FROM hjue/dev-env:base

RUN apt-get update && \
    apt-get -y install \
        php-cli \
        php-fpm \
        php-curl \
        php-mbstring \
        php-gd \
        php-mysql \
        php-json \
        php-ldap \
        php-mime-type \
		php-pgsql \
        php-tidy \
        php-intl \
        php-xmlrpc \
        php-soap \
        php-uploadprogress \
        php-zip && \
    apt-get -y autoremove && \
    apt-get -y install --no-install-recommends imagemagick && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER root


