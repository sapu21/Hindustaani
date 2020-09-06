class User < ApplicationRecord
    has_many :children, class_name: 'User', foreign_key: :father_id
    has_many :childrens, class_name: 'User', foreign_key: :mother_id
    belongs_to :father, class_name: 'User', optional: true, foreign_key: :father_id
    belongs_to :mother, class_name: 'User', optional: true, foreign_key: :mother_id
end
