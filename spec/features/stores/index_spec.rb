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
      expect(page).to have_content(store.id)
  end
end
#User 3
# As a visitor
# When I visit '/child_table_name'
# Then I see each Child in the system including the Child's attributes
# (data from each column that is on the child table)
# [ ] done 
     describe 'As a visitor' do 
     describe "When I visit'/childs_Publisher_name/'" do 
      it 'displays the Publishers name of visited ' do
      store = Store.create!(name: "Dusty's Books", square_footage: 1100, online_sales: false)
      store_2 = Store.create!(name: "Ava's Books", square_footage: 1500, online_sales: true) 
       publisher = Publisher.create!(name: "DC Comics", cost: 3.95, figurines_available: true)
       publisher_2 = Publisher.create!(name: "Marvel", cost: 4.25, figurines_available: true)
     
      
       visit "/publishers"

      expect(page).to have_content(publisher.name)
      expect(page).to have_content(publisher_2.name)
    end
   end 



# User Story 4, Child Show 
#   [ ] done
#         descirbe As a visitor
#        describe When I visit '/child_table_name/:id'
#      Then I see the child with that id including the child's attributes
#       (data from each column that is on the child table)
      it 'displays the attributes of the childs/Publisher' do  
       store = Store.create!(name: "Dusty's Books", square_footage: 1100, online_sales: false)
       store_2 = Store.create!(name: "Ava's Books", square_footage: 1500, online_sales: true) 
       publisher = Publisher.create!(name: "DC Comics", cost: 3.95, figurines_available: true)
       publisher_2 = Publisher.create!(name: "Marvel", cost: 4.25, figurines_available: true)
       visit "/publishers/#{publisher.id}"  
       expect(page).to have_content(publisher.id)
       expect(page).to_not have_content(publisher_2.id)
   end
# [ ] done
# User Story 5, Parent Children Index 
# As a visitor
# When I visit '/parents/:parent_id/child_table_name'
# Then I see each Child that is associated with that Parent with each Child's attributes
# (data from each column that is on the child table)


end

