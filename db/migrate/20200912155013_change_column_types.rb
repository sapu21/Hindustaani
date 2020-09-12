class ChangeColumnTypes < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :father_id, :bigint
    change_column :users, :mother_id, :bigint
    change_column :users, :step_father_id, :bigint
    change_column :users, :step_mother_id, :bigint
  end
end
