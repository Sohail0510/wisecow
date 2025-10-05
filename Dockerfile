FROM ubuntu:22.04

# Install required packages
RUN apt-get update && apt-get install -y \
    bash \
    netcat \
    cowsay \
    fortune-mod \
    && rm -rf /var/lib/apt/lists/*

# Add games to PATH
ENV PATH="/usr/games:${PATH}"

WORKDIR /app

# Copy and make script executable
COPY wisecow.sh .
RUN chmod +x wisecow.sh

EXPOSE 4499

# Run the application
CMD ["./wisecow.sh"]

