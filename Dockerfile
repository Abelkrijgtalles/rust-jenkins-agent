FROM jenkins/agent:latest-alpine-jdk11
RUN curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain nightly -y
RUN source "$HOME/.cargo/env"
RUN cargo install bootimage
RUN rustup component add llvm-tools-preview
RUN rustup component add rust-src --toolchain nightly-x86_64-unknown-linux-musl
