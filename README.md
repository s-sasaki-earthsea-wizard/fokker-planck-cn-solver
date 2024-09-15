# fokker-planck-cn-solver

## 概要
このプロジェクトは、クランク-ニコルソン法を用いてフォッカー-プランク方程式の数値解を求めるC++実装です。
具体的には、1次元でドリフト $\mu$ と拡散係数 $\sigma$ が定数の場合の以下の方程式を解くことを目的としています：

$$ \frac{\partial \rho(t, x)}{\partial t}　＝
- \mu \frac{\partial \rho(t, x)}{\partial x}
+ \frac{\sigma}{2}\frac{\partial^2 \rho(t, x)}{\partial x^2}
$$

## 開発環境
- ホストOS: Ubuntu-18.04 (Jetson Nano)
- コンテナOS: debian:bullseye-20240904-slim
- コンパイラ: gcc 10.2.1
- 主要ライブラリ: Eigen (線形代数計算用)

## インストール方法
1. Dockerをインストールします。
2. このリポジトリをクローンします。
3. 以下のコマンドでDockerイメージをビルドします：
```
make docker-build
```
4. ビルドしたイメージからコンテナを起動するには以下のコマンドを使用します：
```
make docker-run
```
起動したコンテナには、開発に必要なすべての依存関係がインストールされています。

## 使い方
実行方法やチュートリアルを書いてください。
必要に応じてスクリーンショットや動画を使ってください。

## その他
必要なことがあれば書いてください。

_____
-----

# fokker-planck-cn-solver

## Overview
This project is a C++ implementation for numerically solving the Fokker-Planck equation using the Crank-Nicolson method.
Specifically, it aims to solve the following one-dimensional equation with constant drift $\mu$ and diffusion coefficient $\sigma$:

$$ \frac{\partial \rho(t, x)}{\partial t}　＝
- \mu \frac{\partial \rho(t, x)}{\partial x}
+ \frac{\sigma}{2}\frac{\partial^2 \rho(t, x)}{\partial x^2}
$$

## Development Environment
- Host OS: Ubuntu-18.04 (Jetson Nano)
- Container OS: debian:bullseye-20240904-slim
- Compiler: gcc 10.2.1
- Main Library: Eigen (for linear algebra computations)

## Installation
1. Install Docker on your system.
2. Clone this repository.
3. Build the Docker image using the following command:

```
make docker-build
```
4. To start a container from the built image, use:
```
make docker-run
```
The launched container comes with all necessary dependencies installed for development.

## Usage
Write a running procedure or tutorial.
Use screenshots and videos if necessary.

## Others
Anything else, please write here.