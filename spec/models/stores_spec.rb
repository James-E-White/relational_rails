require "rails_helper"

RSpec.describe Store, tyoe: :model do 
  it {should have_many :publishers}

end