class UsersWorker
  include Sidekiq::Worker

  def perform
    require 'net/http'
    require 'json'

    p "I am working"
    url = "https://microverse-api-app.herokuapp.com/users";
    headers = { "Authorization" => "An32iK-eRu17" }
    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    request = Net::HTTP::Get.new(uri.request_uri, headers)
    response = http.request(request)
    data = response.body
    json = data.gsub(/[\[\]]\\/, '')
    users = JSON.parse(json)

    users.each do |user|
      new_user = User.create(
        first_name: user['first_name'],
        last_name: user['last_name'],
        status: user['status'],
        email: user['e mail']
      )
    end
  end
end
