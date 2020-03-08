WILD NIGHT
====

ストリートダンスのポータルサイト
URL  http://52.197.151.88/

![](https://gyazo.com/a17fd2aea8df349bee01d8e47bd78701.png)

## 機能一覧
・ストリートダンスの各ジャンルの説明
・deviceを用いたダンサー紹介情報の登録機能

### 実装予定
・fullcalendarを用いた、イベント登録機能
・ブログ機能
・メーラー機能

## 使用技術一覧
・インフラはAWSを使用（予定）
・画像の登録にはCarrierWaveを使用

## 制作背景
学生時代から趣味としてストリートダンスの界隈で活動していたのですが、
最近、ダンススクールに所属するのではなく個人的に活動を行うダンサーが増えたため、
レッスン情報やダンサーごとの活躍をアピールできるようなサイトを作り、
その活動を応援していきたいと感じ、制作に至りました。

## 工夫したポイント
・トップページのデザイン

## DB設計

### users table
|Column|Type|Options|
|------|----|-------|
|genre_id|integer|null: false, foreign_key: true|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
|area|string|null: false|
|team|string||
|youtube_url|string||
|career|longtext||
|introduction|longtext||


#### Association
- has_many :events,through event_users
- has_many :blogs,through user_blogs
- belongs_to :genre
- has_many :images

### events table
|Column|Type|Options|
|------|----|-------|
|organizer_id|integer|null: false, foreign_key: true|
|name|string|null: false|
|area|string|null: false|
|text|longtext||

#### Association
- has_many :dancers,through event_users
- belongs_to :organizer
- has_many :genres,through event_genres
- has_many :perticipants
- has_many :blogs,through event_blogs
- has_many :images

### genres table
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|event_id|integer|null: false, foreign_key: true|
|image_id|integer|null: false, foreign_key: true|
|name|string|null: false|
|movie_link|string||
|text|longtext||

#### Association
- has_many :users,through user_genres
- has_many :events,through event_genres
- has_many :images

### blogs table
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|event_id|integer|null: false, foreign_key: true|
|image_id|integer|null: false, foreign_key: true|
|title|string|null: false|
|text|longtext|null: false|

#### Association
- has_many :users,through user_blogs
- has_many :events,through event_blogs
- has_many :images

### questions table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|text|longtext|null: false|

### images table
|Column|Type|Options|
|------|----|-------|
|genre_id|string|foreign_key: true|
|blog_id|string|foreign_key: true|
|user_id|string|foreign_key: true|
|event_id|string|foreign_key: true|
|image|integer|null: false|

#### Association
- belongs_to :genre
- belongs_to :blog
- belongs_to :user
- belongs_to :event

### perticipants table
|Column|Type|Options|
|------|----|-------|
|event_id|string|null: false, foreign_key: true|
|name|integer|null: false|
|area|integer|null: false|
|phone_number|integer|null: false|
|email|integer|null: false|

#### Association
- belongs_to :event


### user_genres table
|Column|Type|Options|
|------|----|-------|
|user_id|string|null: false, foreign_key: true|
|genre_id|string|null: false, foreign_key: true|

#### Association
- belongs_to :user
- belongs_to :genre

### user_blogs table
|Column|Type|Options|
|------|----|-------|
|user_id|string|null: false, foreign_key: true|
|blog_id|string|null: false, foreign_key: true|

#### Association
- belongs_to :user
- belongs_to :blog

### event_blogs table
|Column|Type|Options|
|------|----|-------|
|event_id|string|null: false, foreign_key: true|
|blog_id|string|null: false, foreign_key: true|

#### Association
- belongs_to :event
- belongs_to :blog

### event_genres table
|Column|Type|Options|
|------|----|-------|
|event_id|string|null: false, foreign_key: true|
|genre_id|string|null: false, foreign_key: true|

#### Association
- belongs_to :event
- belongs_to :genre

