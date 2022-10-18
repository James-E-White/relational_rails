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
      #save_and_open_page
      expect("Dusty's Books").to appear_before("Ava's Books")
    
      
  end


#User Story 10, Parent Child Index Link
# As a visitor
# When I visit a parent show page ('/parents/:id')
# Then I see a link to take me to that parent's `child_table_name` 
#page ('/parents/:id/child_table_name')
   describe 'as a visitor' do 
     describe 'displays a link to publishers on stores on the site' do 
      it "creates a link to the Store '/publishers' on the page" do
      store = Store.create!(name: "Dusty's Books", square_footage: 1100, online_sales: false)
      store_2 = Store.create!(name: "Ava's Books", square_footage: 1500, online_sales: true)
      publisher = store.publishers.create!(name: "DC Comics", cost: 3.95, figurines_available: true)
      publisher_2 = store.publishers.create!(name: "Marvel", cost: 4.25, figurines_available: true)
      
      visit "/stores/#{store.id}"  
      expect(page).to have_selector(:css, "a[href='/stores/#{store.id}/publishers']")
      
    end
  end 
 end 
  





     
end 
