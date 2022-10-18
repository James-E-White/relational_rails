require 'rails_helper'

#   [ ] done

# User Story 2, Parent Show 

# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)
RSpec.describe 'when a user visits the parents/:id they see the stors id' do 
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

    #   User Story 7, Parent Child Count
# As a visitor
# When I visit a parent's show page
# I see a count of the number of children associated with this parent
# Usability
# [ ] done
    describe '#count of publishers for each store'
    it 'displays the total_count_of_publishers for each store' do 
      store = Store.create!(name: "Dusty's Books", square_footage: 1100, online_sales: false)
      store_2 = Store.create!(name: "Ava's Books", square_footage: 1500, online_sales: true)
      publisher = store.publishers.create!(name: "DC Comics", cost: 3.95, figurines_available: true)
      publisher_2 = store.publishers.create!(name: "Marvel", cost: 4.25, figurines_available: true)
      visit "/stores/#{store.id}" 
      #save_and_open_page
      expect(store.count_of_publishers).to eq(2)
      expect(store_2.count_of_publishers).to eq(0)
      
  end
end
