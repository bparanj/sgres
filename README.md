pg_search_scope :search_by_full_name, against: :name,
    using: { tsearch: { any_word: true } }

Search for all records that contains the term (separated by spaces) in the first name. 

pg_search_scope :search_by_full_name, against: {
    name: 'A',
    surname: 'B'
}

First name higher rank than surname.


