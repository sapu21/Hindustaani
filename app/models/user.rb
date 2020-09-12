class User < ApplicationRecord
    has_one :child_of_father, class_name: 'User', foreign_key: :father_id
    has_one :child_of_mother, class_name: 'User', foreign_key: :mother_id
    has_one :step_child_of_father, class_name: 'User', foreign_key: :step_father_id
    has_one :step_child_of_mother, class_name: 'User', foreign_key: :step_mother_id
    belongs_to :father, class_name: 'User', optional: true, foreign_key: :father_id
    belongs_to :mother, class_name: 'User', optional: true, foreign_key: :mother_id
    belongs_to :step_father, class_name: 'User', optional: true, foreign_key: :step_father_id
    belongs_to :step_mother, class_name: 'User', optional: true, foreign_key: :step_mother_id

    enum gender: [ :male, :female ]

    scope :children, ->(user_id) { where('father_id= ? OR mother_id= ?', user_id,user_id) }
    scope :step_children, ->(user_id) { where('step_father_id= ? OR step_mother_id= ?', user_id,user_id) }

    validates :adharnumber, presence: true, numericality: { only_integer: true }, uniqueness: true
    validates :name, presence: true
    validate :check_if_step_parents_option_is_true

    def check_if_step_parents_option_is_true
        if self.has_step_parents == false && (self.step_father.present? || self.step_mother.present?)
            self.errors.add(:has_step_parents, "turn this option to true")
        end
    end

end
