# Next-L Enju Leaf Docker Image

## 初期設定

事前に[docker-composeのインストール](https://docs.docker.com/compose/install/)が必要です。

```sh
$ git clone https://github.com/next-l/enju_leaf_docker.git
$ cd enju_leaf_docker
$ docker-compose up -d
$ docker-compose run web rails g enju_leaf:seed # 初期データ投入
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
