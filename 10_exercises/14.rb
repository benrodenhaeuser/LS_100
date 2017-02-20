# exercise 14
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],["sally@email.com", "123 Wall st.", "444-123-4567"]]
keys = [:email, :street, :phone]
contacts = {"Joe Smith" => {}, "Sally Jones" => {} }
contact_names = contacts.keys

contact_names.each_with_index do |contact_name,contact_index|
  keys.each_with_index do |value,index|
    contacts[contact_name][value] = contact_data[contact_index][index]
  end
end

p contacts

# Launch School solution
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end
