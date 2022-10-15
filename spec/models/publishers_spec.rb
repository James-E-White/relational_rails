require "rails_helper"

RSpec.describe Publisher do 
  it {should belong_to :store}
end