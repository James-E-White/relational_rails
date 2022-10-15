require 'rails_helper'

RSpec.describe 'the stores show page' do

# [ ] done
# User Story 5, Parent Children Index 
# As a visitor
# When I visit '/parents/:parent_id/child_table_name'
# Then I see each Child that is associated with that Parent with each Child's attributes
# (data from each column that is on the child table)
     it "displays the associated attributes with each publisher" do 
       
      store = Store.create!(id: 1, name: "Dusty's Books", square_footage: 1100, online_sales: false)
      store_2 = Store.create!(id: 2, name: "Ava's Books", square_footage: 1500, online_sales: true)
      publisher = store.publishers.create!(name: "DC Comics", cost: 3.95, figurines_available: true)
      publisher_2 = store.publishers.create!(name: "Marvel", cost: 4.25, figurines_available: true)

       visit "/stores/#{store.id}/publishers"
       
      expect(page).to have_content(publisher.id)
      expect(page).to_not have_content(publisher_2.id)
      expect(page).to have_content(publisher.name)
      expect(page).to_not have_content(publisher_2.name)
      expect(page).to have_content(publisher.cost)
      expect(page).to_not have_content(publisher_2.cost)
      expect(page).to have_content(publisher.figurines_available)
      expect(page).to_not have_content(publisher_2.figurines_available)
     end 
end