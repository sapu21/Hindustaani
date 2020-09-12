class AddHasStepParentsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :has_step_parents, :boolean, :default => false
  end
end
