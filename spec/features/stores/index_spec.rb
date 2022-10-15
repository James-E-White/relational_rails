require 'rails_helper'

RSpec.describe 'the stores show page' do
# User Story 1, Parent Index 
# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system
# [ ] done
   describe 'As a visitor' do 
    describe "When I visit'/parents/'" do 
     it 'displays the stores name of visited ' do 
      
      store = Store.create!(name: "Dusty's Books", square_footage: 1100, online_sales: false)
      store_2 = Store.create!(name: "Ava's Books", square_footage: 1500, online_sales: true)
       visit "/stores"
      expect(page).to have_content(store.name)
      expect(page).to have_content(store_2.name)
      expect(page).to have_content(store.square_footage)
      expect(page).to have_content(store_2.square_footage)
      expect(page).to have_content(store.online_sales)
      expect(page).to have_content(store_2.online_sales)
    end
   end 
  end 
#   [ ] done

# User Story 2, Parent Show 

# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)
     it 'displays the attributes of the stores' do  
      store = Store.create!(name: "Dusty's Books", square_footage: 1100, online_sales: false)
      store_2 = Store.create!(name: "Ava's Books", square_footage: 1500, online_sales: true)
       visit "/stores/#{store.id}"  
      expect(page).to have_content(store.id)
      expect(page).to_not have_content(store_2.id)
      expect(page).to have_content(store.name)
      expect(page).to_not have_content(store_2.name)
      expect(page).to have_content(store.square_footage)
      expect(page).to_not have_content(store_2.square_footage)
      expect(page).to have_content(store.online_sales)
      expect(page).to_not have_content(store_2.online_sales)
    end



end

