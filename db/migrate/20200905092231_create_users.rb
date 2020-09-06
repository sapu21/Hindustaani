class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :adharnumber
      t.string :birthdate
      t.string :father
      t.string :mother
      t.string :children

      t.timestamps
    end
  end
end
