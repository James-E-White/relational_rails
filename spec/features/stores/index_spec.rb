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
      #save_and_open_page
      expect("Dusty's Books").to appear_before("Ava's Books")
    
      
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
  
# User Story 11, Parent Creation 

# As a visitor
# When I visit the Parent Index page
# Then I see a link to create a new Parent record, "New Parent"
# When I click this link
# Then I am taken to '/parents/new' where I  see a form for a new parent record
# When I fill out the form with a new parent's attributes:
# And I click the button "Create Parent" to submit the form
# Then a `POST` request is sent to the '/parents' route,
# a new parent record is created,
# and I am redirected to the Parent Index page where I see the new Parent displayed.
# [ ] done
     describe 'as a visitor I see a link to create "New Store"' do 
      describe 'form to fill out for new parents attributes' do 
        describe 'when I click button a post request is sent to create a new parent' do 
        it 'links to a new store page' do 
         store = Store.create!(name: "Dusty's Books", square_footage: 1100, online_sales: false)
         store_2 = Store.create!(name: "Ava's Books", square_footage: 1500, online_sales: true)
         publisher = store.publishers.create!(name: "DC Comics", cost: 3.95, figurines_available: true)
         publisher_2 = store.publishers.create!(name: "Marvel", cost: 4.25, figurines_available: true)
          visit '/stores'

          
          expect(page).to have_link("New Store")
          
          expect(current_path).to eq("/stores")
        end
      end
     end
   end
       it 'can create a new store' do 
        visit '/stores/new'
        fill_in('Name', with: 'James Gems')
        fill_in("square_footage", with: 1600)
        fill_in("online_sales", with: "true")
        click_button('Create Store')
        
         expect(current_path).to eq("/stores")
         expect(page).to have_content("James Gems")
         expect(page).to_not have_content("Alana's Albums")
       end




     
end 
