# README

# DB設計

## users table
|Column|Type|Options|
|------|----|-------|
|genre_id|integer||
|blog_id|integer||
|image_id|integer||
|name|string||
|email|string||
|phone_number|string||
|password|string||
|area|string||
|team|string||

### Association
- has_many :events,through event_users
- has_many :blogs,through user_blogs
- has_many :genres,through user_genres
- has_many :images

## events table
|Column|Type|Options|
|------|----|-------|
|dancer_id|integer||
|organizer_id|integer||
|genre_id|integer||
|perticipant_id|integer||
|blog_id|integer||
|image_id|integer||
|name|string||
|area|string||
|text|longtext||

### Association
- has_many :dancers,through event_users
- belongs_to :organizer
- has_many :genres,through event_genres
- has_many :perticipants
- has_many :blogs,through event_blogs
- has_many :images

## genres table
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|event_id|integer||
|image_id|integer||
|name|string||
|movie_link|string||
|text|longtext||

### Association
- has_many :users,through user_genres
- has_many :events,through event_genres
- has_many :images

## blogs table
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|event_id|integer||
|image_id|integer||
|title|string||
|text|longtext||

### Association
- has_many :users,through user_blogs
- has_many :events,through event_blogs
- has_many :images

## questions table
|Column|Type|Options|
|------|----|-------|
|name|string||
|email|string||
|text|longtext||

## images table
|Column|Type|Options|
|------|----|-------|
|genre_id|string||
|blog_id|string||
|user_id|string||
|event_id|string||
|name|integer||
|image|integer||

### Association
- belongs_to :genre
- belongs_to :blog
- belongs_to :user
- belongs_to :event

## perticipants table
|Column|Type|Options|
|------|----|-------|
|event_id|string||
|name|integer||
|area|integer||
|phone_number|integer||
|email|integer||

### Association
- belongs_to :event


## user_genres table
|Column|Type|Options|
|------|----|-------|
|user_id|string||
|genre_id|string||

### Association
- belongs_to :user
- belongs_to :genre

## user_blogs table
|Column|Type|Options|
|------|----|-------|
|user_id|string||
|blog_id|string||

### Association
- belongs_to :user
- belongs_to :blog

## event_blogs table
|Column|Type|Options|
|------|----|-------|
|event_id|string||
|blog_id|string||

### Association
- belongs_to :event
- belongs_to :blog

## event_genres table
|Column|Type|Options|
|------|----|-------|
|event_id|string||
|genre_id|string||

### Association
- belongs_to :event
- belongs_to :genre

