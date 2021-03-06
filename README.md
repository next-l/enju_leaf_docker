# Next-L Enju Leaf Docker Image

https://hub.docker.com/r/projectnextl/enju_leaf

このDockerイメージは、開発者向けの不安定版（masterブランチ）をもとに作成しています。安定版を試す場合は、[VMwareの仮想マシンイメージ](https://www.next-l.jp/?page=VM)を使用してください。

## 初期設定

事前に[docker-composeのインストール](https://docs.docker.com/compose/install/)が必要です。

```sh
$ git clone https://github.com/next-l/enju_leaf_docker.git
$ cd enju_leaf_docker
$ cp .env.template .env
$ docker-compose up -d
$ docker-compose run web yarn install
$ docker-compose run web rake db:create
$ docker-compose run web rails g enju_leaf:seed # マイグレーションファイル作成・初期データ投入
$ docker-compose run web rake assets:precompile
$ docker-compose down
```

## 起動

```
$ docker-compose up -d
```

アプリケーションには http://localhost:3000 でアクセスできます。

## 終了

```sh
$ docker-compose stop # 停止
$ docker-compose down # コンテナ削除
```

## 参考資料

- [enju_docker](https://github.com/tuyoshia/enju_docker)

## 連絡先

- [TANABE, Kosuke (@nabeta)](https://github.com/nabeta)
