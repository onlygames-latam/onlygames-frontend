# Use the official WordPress image as the base image
FROM wordpress:5.6.2

# Install required packages for Composer
RUN apt-get update && \
    apt-get install -y unzip && \
    apt-get install -y git

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
