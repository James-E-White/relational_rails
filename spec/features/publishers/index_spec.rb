require 'rails_helper'

RSpec.describe 'the publishers show page' do
    #User 3
# As a visitor
# When I visit '/child_table_name'
# Then I see each Child in the system including the Child's attributes
# (data from each column that is on the child table)
# [ ] done 
     describe 'As a visitor' do 
     describe "When I visit'/childs_Publisher_name/'" do 
      it 'displays the Publishers name of visited ' do
      store = Store.create!(name: "Dusty's Books", square_footage: 1100, online_sales: false)
      store_2 = Store.create!(name: "Ava's Books", square_footage: 1500, online_sales: true) 
      publisher = store.publishers.create!(name: "DC Comics", cost: 3.95, figurines_available: true)
      publisher_2 = store.publishers.create!(name: "Marvel", cost: 4.25, figurines_available: true)
  
      
       visit "/publishers"

      expect(page).to have_content(publisher.name)
      expect(page).to have_content(publisher_2.name)
      expect(page).to have_content(publisher.cost)
      expect(page).to have_content(publisher_2.cost)
      expect(page).to have_content(publisher.figurines_available)
      expect(page).to have_content(publisher_2.figurines_available)
    end
   end 
 end


end