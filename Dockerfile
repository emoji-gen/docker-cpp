FROM debian:buster-slim

RUN ["/bin/bash", "-c", "\
  set -eux -o pipefail \
    && apt-get update -qq \
    && apt-get install -qq -y --no-install-recommends \
      git gcc g++ make cmake python \
      libfontconfig1-dev libx11-dev libxcomposite-dev libgl1-mesa-dev libglu1-mesa-dev freeglut3-dev \
      curl wget gnupg ca-certificates \
    \
    && curl -fsSL https://yum.dockerproject.org/gpg | apt-key add - \
    && echo 'deb http://apt.llvm.org/buster/ llvm-toolchain-buster-9 main' >> /etc/apt/sources.list  \
    && echo 'deb-src http://apt.llvm.org/buster/ llvm-toolchain-buster-9 main' >> /etc/apt/sources.list \
    && wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - \
    && apt-get -o Acquire::Check-Valid-Until=false update \
    && apt-get install -y clang-format-9 \
    && rm -f /usr/bin/clang-format \
    && ln -s /usr/bin/clang-format-9 /usr/bin/clang-format \
    && clang-format --version \
    \
    && rm -rf /tmp/build \
    && apt-get purge -y curl gnupg \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* \
"]
