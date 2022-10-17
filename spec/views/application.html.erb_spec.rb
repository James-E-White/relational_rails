require 'rails_helper'
RSpec.describe 'layouts/application', type: :view do
# User Story 8, Child Index Link
# As a visitor
# When I visit any page on the site
# Then I see a link at the top of the page that takes me to the Child Index
# [ ] done
  describe 'as a visitor' do 
   describe 'displays a link to publishers on anypage of the site' do 
    it "should create a link to '/publishers/' at the top of the page" do 
      #store = Store.create!(name: "Dusty's Books", square_footage: 1100, online_sales: false)
      #store_2 = Store.create!(name: "Ava's Books", square_footage: 1500, online_sales: true)
      #publisher = store.publishers.create!(name: "DC Comics", cost: 3.95, figurines_available: true)
      #publisher_2 = store.publishers.create!(name: "Marvel", cost: 4.25, figurines_available: true)
       render
       
       rendered.should have_selector(:css, 'a[href="/publishers/"]')
       expect(rendered).to have_selector(:css, 'a[href="/publishers/"]')
   
    
    end
  end
 end
# User Story 9, Parent Index Link
# As a visitor
# When I visit any page on the site
# Then I see a link at the top of the page that takes me to the Parent Index
# [ ] done
    describe 'as a visitor' do 
     describe 'displays a link to stores on anypage of the site' do 
     it "should create a link to '/stores/' at the top of the page" do 
      #store = Store.create!(name: "Dusty's Books", square_footage: 1100, online_sales: false)
      #store_2 = Store.create!(name: "Ava's Books", square_footage: 1500, online_sales: true)
      #publisher = store.publishers.create!(name: "DC Comics", cost: 3.95, figurines_available: true)
      #publisher_2 = store.publishers.create!(name: "Marvel", cost: 4.25, figurines_available: true)
       render
       
       rendered.should have_selector(:css, 'a[href="/stores/"]')
       expect(rendered).to have_selector(:css, 'a[href="/stores/"]')
    end
   end  
  end    
end 