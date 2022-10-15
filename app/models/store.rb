class Store < ApplicationRecord
    has_many :publishers
     def count_of_publishers
        self.publishers.count
        
    end
end