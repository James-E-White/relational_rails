require 'rails_helper'

# User Story 13, Parent Child Creation 
# As a visitor
# When I visit a Parent Children Index page
# Then I see a link to add a new adoptable child for that parent "Create Child"
# When I click the link
# I am taken to '/parents/:parent_id/child_table_name/new' where I see a form to add a new adoptable child
# When I fill in the form with the child's attributes:
# And I click the button "Create Child"
# Then a `POST` request is sent to '/parents/:parent_id/child_table_name',
# a new child object/row is created for that parent,
# and I am redirected to the Parent Childs Index page where I can see the new child listed
# [ ] done
 RSpec.describe  'as a visitor' do 
    describe 'displays a link to make new publishers on stores on the site' do 
     describe 'has a form to create new publishers' do 
     it "creates a link on a store that takes the user to create a publishers on a page" do
      store = Store.create!(name: "Dusty's Books", square_footage: 1100, online_sales: false)
      store_2 = Store.create!(name: "Ava's Books", square_footage: 1500, online_sales: true)
      publisher = store.publishers.create!(name: "DC Comics", cost: 3.95, figurines_available: true)
      publisher_2 = store.publishers.create!(name: "Marvel", cost: 4.25, figurines_available: true)
      visit "/stores/#{store.id}/publishers" 
      click_link "Create New Publisher"
      expect(current_path).to eq('/stores/#{store.id}/publishers/new')
      expect(current_path).to have_content(click_link "Create New Publisher")
     end 
    end
  end 
end 