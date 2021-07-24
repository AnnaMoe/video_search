class Video < ApplicationRecord
  belongs_to :subject

   #using gem PG search
   include PgSearch::Model
   # pg_search_scope is the method you need to call in the controller, when you want to search
  pg_search_scope :global_search,
    against: :title,
    #searching through association
    associated_against: {
      subject: :name 
    },
    using: {
      # partial words allowed (prefix only)
      tsearch: { prefix: true } 
    }
end
