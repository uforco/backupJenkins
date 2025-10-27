FROM jenkins/jenkins:lts-jdk21

USER root

RUN mkdir -p /var/lib/apt/lists/partial && chmod 755 /var/lib/apt/lists/partial \
    && apt-get update \
    && apt-get install -y docker.io \
    && rm -rf /var/lib/apt/lists/*

USER jenkins