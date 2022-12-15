# require 'net/http'
# require 'json'
# url = "https://microverse-api-app.herokuapp.com/users";
# header = { "Authorization" => "An32iK-eRu17" }
# uri = URI(url)
# http = Net::HTTP.new(uri.host, uri.port)
# http.use_ssl = true
# request = Net::HTTP::Get.new(uri.request_uri, header)
# response = http.request(request)
# data = response.body
# json = data.gsub(/[\[\]]\\/, '')
# users = JSON.parse(json)

# users.each do |user|
#   new_user = User.create(
#     first_name: user['first_name'],
#     last_name: user['last_name'],
#     status: user['status'],
#     email: user['email']
#   )
# end


# t.string "first_name"
# t.string "last_name" 
# t.string "status"
# t.date "created_at"
# t.string "email"
