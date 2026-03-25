# 内存：8GB以上
# 操作系统：Ubuntu 20.04
# 目标架构：AArch64
# GCC版本：4.8.5以上
# glibc版本：2.17以上
# libatomic版本：1.2及以上
# libstdc++版本：6及以上

FROM ubuntu:20.04
LABEL maintainer="your_name@example.com"

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai

WORKDIR /app

# 安装基础依赖
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    gcc g++ make git curl wget ca-certificates dos2unix python3 python3-pip \
    libatomic-ops-dev libstdc++-10-dev qemu-user-static && \
    rm -rf /var/lib/apt/lists/*

# 安装 Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# 安装毕昇编译器
RUN mkdir -p /opt/compiler
COPY BiShengCompiler-4.2.0.2-aarch64-linux.tar.gz /opt/compiler/

WORKDIR /opt/compiler
RUN tar -zxvf BiShengCompiler-4.2.0.2-aarch64-linux.tar.gz && \
    chmod -R 755 BiShengCompiler-4.2.0.2-aarch64-linux

# 拷贝项目
COPY . /app
RUN find /app -name "*.sh" -exec dos2unix {} \;

# 环境变量（使用毕昇自带的 LLVM，不装系统 LLVM）
ENV BISHENG_HOME="/opt/compiler/BiShengCompiler-4.2.0.2-aarch64-linux"
ENV PATH="${BISHENG_HOME}/bin:/root/.cargo/bin:${PATH}"
ENV LLVM_BIN="${BISHENG_HOME}/bin"
ENV LD_LIBRARY_PATH="${BISHENG_HOME}/lib:${BISHENG_HOME}/lib/aarch64-unknown-linux-gnu"

# 直接用毕昇编译器自带的 LLVM，跳过系统安装！
ENV LLVM_CONFIG_PATH="${LLVM_BIN}/llvm-config"
ENV LLVM_SYS_170_PREFIX="${BISHENG_HOME}"

WORKDIR /app/compiler
CMD ["bash"]