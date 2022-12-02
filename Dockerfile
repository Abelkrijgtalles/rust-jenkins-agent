FROM jenkins/agent:latest-alpine-jdk11
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -y
