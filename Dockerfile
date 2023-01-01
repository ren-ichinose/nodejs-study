FROM --platform=linux/x86_64 node:16.14.2-slim

RUN apt-get update && \
    apt-get install -y locales git procps
RUN locale-gen ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP
ENV LANG=ja_JP.UTF-8
ENV TZ=Asia/Tokyo
WORKDIR /nodejs-study

# FROM ... ベースとなる Docker イメージを指定します。ここでは、先ほど決めた node:16.14.2-slim です。
# RUN ... コマンドを実行します。ここでは、イメージに含まれていないソフトウェアのインストールや、日本語に関する設定をしています。
# ENV ... 環境変数を設定します。ここでは、日本語やタイムゾーンに関する設定をしています。
# WORKDIR ... 作業ディレクトリを指定します。ここでは nodejs-study を作業ディレクトリとします。