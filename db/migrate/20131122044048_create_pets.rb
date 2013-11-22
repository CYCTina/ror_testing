class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :color
      t.integer :age
      t.string :owner
      t.boolean :terms

      t.timestamps
    end
  end
end
