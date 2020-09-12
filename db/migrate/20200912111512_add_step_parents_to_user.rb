class AddStepParentsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :step_father, :integer
    add_column :users, :step_mother, :integer
  end
end
