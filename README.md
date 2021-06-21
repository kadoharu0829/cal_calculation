# 概要

cal_calculation では、決まったメニューを選択し、エネルギーやたんぱく質などを算出・表示するシステムです。

大学での研究内容をシステムで説明出来るよう構築しました。

# 使用言語

* 言語：Ruby(2.6.7)

* フレームワーク：Ruby on Rails(6.0.3)

* RDBMS：SQLite3(バージョンは Gemfile.lock 参照)

# 使い方

* gem インストール

  ```
  bundle install
  ```

* データベース作成

  ```
  rails db:create
  ```

* マイグレーション実行

  ```
  rails db:migrate
  ```

* 初期データ投入

  ```
  rails db:seed
  ```

* Rails アプリケーション起動

  ```
  rails s
  ```
