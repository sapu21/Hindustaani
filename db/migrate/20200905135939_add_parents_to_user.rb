class AddParentsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :father_id, :integer
    add_column :users, :mother_id, :integer
  end
end
