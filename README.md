# mysql
mysql 関連の置き場

## dockerイメージの利用

### Setup

1. 公式からpullしてくる
```
docker pull mysql:5.6
```

### Run

1. 必要に応じて起動Scriptのオプションを修正する。
    - `docker/start_mysql_5_6.sh`
1. 必要に応じてMySQLの設定を修正する
    - `docker/conf.d/config-file.cnf`
1. 起動する
    - `docker/start_mysql_5_6.sh`

### Start/Stop

1. dockerコマンドで実施
