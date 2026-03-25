
# RBRCompiler (RBR 编译器)

RBRCompiler 是一个旨在支持特定 C 语言子集的编译器项目，具备从词法分析到代码生成的完整编译链路。本文档旨在指导用户完成开发环境的搭建、配置及基本使用。

---

## 一、 环境配置与依赖准备

### 1. 获取毕昇编译器 (BiSheng Compiler)
由于文件体积限制，仓库未包含必要的编译器工具链。请按以下步骤手动获取：
*   **下载地址**：[毕昇编译器下载中心](https://www.hikunpeng.com/developer/devkit/download/bishengcompiler)
*   **目标文件**：请选择下载 `BiShengCompiler-4.2.0.2-aarch64-linux.tar.gz`。
*   **放置路径**：下载完成后，请将该压缩包置于项目根目录 (`RBRcompiler`) 下，确保与 `compiler` 源代码目录处于同一层级。

### 2. Docker 环境准备
本项目依赖 Docker 容器化环境以保证跨平台的一致性。
*   请确保宿主机已正确安装并配置 Docker 引擎。

### 3. 构建开发镜像
在项目根目录 (`RBRcompiler`) 打开终端，执行以下命令构建 Docker 镜像（针对 ARM64 架构）：
```bash
docker build --platform linux/arm64 -t rbr-compiler:latest .
```
*   构建完成后，可使用 `docker images` 查看镜像状态。

### 4. 启动容器环境
镜像构建完成后，使用以下命令启动并进入交互式容器环境。请将 `<HOST_PATH>` 替换为您本地 Dockerfile 所在的绝对路径，以便挂载代码目录：
```bash
docker run --rm -it -v <HOST_PATH>:/app rbr-compiler:latest bash
```
*   成功执行后，您将进入容器的命令行界面（Shell），工作目录默认为 `/app`。

---



---
*注：本文档所述命令均基于 Linux/Docker 环境。如在 Windows 环境下开发，建议配合 WSL2 或 Docker Desktop 使用。*

