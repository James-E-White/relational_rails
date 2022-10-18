require 'rails_helper'

RSpec.describe 'Store edit' do


# User Story 12, Parent Update 

# As a visitor
# When I visit a parent show page
# Then I see a link to update the parent "Update Parent"
# When I click the link "Update Parent"
# Then I am taken to '/parents/:id/edit' where I  see a form to edit the parent's attributes:
# When I fill out the form with updated information
# And I click the button to submit the form
# Then a `PATCH` request is sent to '/parents/:id',
# the parent's info is updated,
# and I am redirected to the Parent's Show page where I see the parent's updated info
# [ ] done  
      describe 'as a visitor I see a link to update Parent' do 
       #describe 'when I click update parent I am taken to /parents/:id/edit' do 
       describe 'when I fill out information and click button a patch request is sent to create a new parent' do 
        it 'when stores show page is visited there is a link labeled Update' do 
         store = Store.create!(name: "Dusty's Books", square_footage: 1100, online_sales: false)
         #store_2 = Store.create!(name: "Ava's Books", square_footage: 1500, online_sales: true)
         #publisher = store.publishers.create!(name: "DC Comics", cost: 3.95, figurines_available: true)
         #publisher_2 = store.publishers.create!(name: "Marvel", cost: 4.25, figurines_available: true)
         store_3 = Store.create!(name: "Jmes Gems", square_footage: 1100, online_sales: false)
          visit '/stores/'
       
          
          click_button "Update #{store.name}"
         
          expect(current_path).to eq("/stores/#{store.id}/edit")
          expect(page).to have_button("Update #{store.name}")
        end
         it 'can update a stores attributes when link update is clicked upon' do 
           store_3 = Store.create!(name: "Jmes Gems", square_footage: 1100, online_sales: false)
 
           visit "/stores/#{store_3.id}/edit"
          
            fill_in("name", with: 'James Gems')
            fill_in("square_footage", with: 1600)
            fill_in("online_sales", with: true)
            click_button("Update #{store_3.name}")
            
            expect(current_path).to eq("/stores")
            expect(page).to have_content("James Gems")
            expect(page).to have_content(square_footage = 1600)
            expect(page).to have_content(online_sales = true)
            expect(page).to_not have_content("Alanas Albums")
        end
      end
     end
    
end
  
    
