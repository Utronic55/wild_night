json.array! @users do |user|
  json.id  user.id
  json.genre_id  user.genre_id
  json.name  user.name
end