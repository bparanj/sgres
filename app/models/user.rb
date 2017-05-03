class User < ApplicationRecord
  has_many :pets
  
  include PgSearch
  
  pg_search_scope :search_by_full_name, against: {
    name: 'A',
    surname: 'B'
  }
end
