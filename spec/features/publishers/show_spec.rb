require 'rails_helper'

# User Story 4, Child Show 
#   [ ] done
#         descirbe As a visitor
#        describe When I visit '/child_table_name/:id'
#      Then I see the child with that id including the child's attributes
#       (data from each column that is on the child table)
RSpec.describe 'publishers show page' do 
      it 'displays the attributes of the childs/Publisher' do  
       store = Store.create!(name: "Dusty's Books", square_footage: 1100, online_sales: false)
       store_2 = Store.create!(name: "Ava's Books", square_footage: 1500, online_sales: true) 
       publisher = store.publishers.create!(name: "DC Comics", cost: 3.95, figurines_available: true)
       publisher_2 = store.publishers.create!(name: "Marvel", cost: 4.25, figurines_available: true)
       visit "/publishers/#{publisher.id}"  
       expect(page).to have_content(publisher.id)
       #expect(page).to have_content(publisher_2.id)
       expect(page).to have_content(publisher.name)
       expect(page).to_not have_content(publisher_2.name)
       expect(page).to have_content(publisher.cost)
       expect(page).to_not have_content(publisher_2.cost)
       expect(page).to have_content(publisher.figurines_available)
       expect(page).to have_content(publisher_2.figurines_available)
   end
end