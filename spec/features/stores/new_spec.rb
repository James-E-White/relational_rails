require 'rails_helper'

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
RSpec.describe 'as a visitor I see a link to create "New Store"' do 
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