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

# User Story 6, Parent Index sorted by Most Recently Created 

# As a visitor
# When I visit the parent index,
# I see that records are ordered by most recently created first
# And next to each of the records I see when it was created
# [ ] done
     it 'displays the stores by most recently created first'do 
     store = Store.create!(name: "Dusty's Books", square_footage: 1100, online_sales: false)
     store_2 = Store.create!(name: "Ava's Books", square_footage: 1500, online_sales: true)
     visit "/stores" 
   
      expect(page).to have_content(store.created_at)
      expect(page).to have_content(store_2.created_at) 
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
      save_and_open_page
      expect(store.count_of_publishers).to eq(2)
      expect(store_2.count_of_publishers).to eq(0)
  end
end

