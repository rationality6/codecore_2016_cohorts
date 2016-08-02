#enumerable

# puts (1..10).find_all { |i| i % 3 == 0 }
# print (1..10).select { |i| i % 3 == 0 }

clients = {
  "yellow"=>{"client_id"=>"2178"},
  "orange"=>{"client_id"=>"2180"},
  "red"=>{"client_id"=>"2179"},
  "blue"=>{"client_id"=>"2181"}
}

puts clients.select{|key, hash| hash["client_id"] == "2180" }
