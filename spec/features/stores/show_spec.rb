require 'rails_helper'

RSpec.describe 'the stores show page' do
# User Story 1, Parent Index 
# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system
# [ ] done
   describe 'As a visitor' do 
    describe "When I visit'/parents/:id'" do 
     it 'displays the stores name of id visited ' do 
      
      store = Store.create!(name: "Dusty's Books", square_footage: 1100, online_sales: false)
      store_2 = Store.create!(name: "Ava's Books", square_footage: 1500, online_sales: true)
       visit "/stores/#{store.id}"
      expect(page).to have_content(store.name)
      expect(page).to_not have_content(store_2.name)
    end
   end
 end 
    # it 'displays the attributes of the stores'
    # store = Store.create!(name: "Dusty's Books", square_footage: 1100, online_sales: false)
    # store_2 = Store.create!(name: "Ava's Books", square_footage: 1500, online_sales: true)
    # visit "/stores/#{store.id}"
    # end
    
end