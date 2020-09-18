require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }
def remove_strawberry(contacts)
  contacts.each do |person, contact_details_hash| #1st level of key/value
    if person == "Freddy Mercury" # if key is freddy merc
      contact_details_hash.each do |attribute, data| # then pass only fred mercs attri and data
        if attribute == :favorite_ice_cream_flavors # if one of the attri is favorite_ice_cream_flavors
          data.delete_if {|ice_cream| ice_cream == "strawberry"} # then delet the data within favorite_ice_cream_flavors which is "strawberry"
        end
      end
    end
  end
end