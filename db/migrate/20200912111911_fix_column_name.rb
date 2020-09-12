class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.rename :step_father, :step_father_id
      t.rename :step_mother, :step_mother_id
    end
  end
end
