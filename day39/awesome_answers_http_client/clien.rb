require "faraday"
require "json"

API_KEY = "da341ccb63c3a12ed7d26c638d5baaebdfa1867d9656428bd2fa45c8773c5216"

conn = Faraday.new(url: 'http://localhost:3000') do |faraday|
  faraday.request  :url_encoded             # form-encode POST params
  faraday.response :logger                  # log requests to STDOUT
  faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
end


# params = { question: { title: "question from api", body: "question body from api" } }
# conn.post "/api/v1/questions?api_key=#{API_KEY}", params

puts "Give me the questions title: "
title = gets.chomp
puts "Give me the question body: "
body = gets.chomp
params = { question: { title: title, body: body } }
response = conn.post "/api/v1/questions?api_key=#{API_KEY}", params
parsed_response = JSON.parse response.body

if parsed_response["success"]
  puts "Question created successfully!"
else
  puts "ERRORS: #{parsed_response["errors"].join(', ')}"
end

response = conn.get "/api/v1/questions?api_key=#{API_KEY}"
parsed_response = JSON.parse(response.body)

parsed_response.each do |question_hash|
  puts ">>>> #{question_hash['title']}"
end
