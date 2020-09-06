class User < ApplicationRecord
    has_one :child_of_father, class_name: 'User', foreign_key: :father_id
    has_one :child_of_mother, class_name: 'User', foreign_key: :mother_id
    belongs_to :father, class_name: 'User', optional: true, foreign_key: :father_id
    belongs_to :mother, class_name: 'User', optional: true, foreign_key: :mother_id
    enum gender: [ :male, :female ]

    scope :children, ->(user_id) { where('father_id= ? OR mother_id= ?', user_id,user_id) }


end
