json.array! @users do |user|
  json.id user.id
  json.full_name user.search_by_full_name
  json.name user.name
  json.surname user.surname
end