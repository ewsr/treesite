class CreateTrees < ActiveRecord::Migration[5.2]
  def change
    create_table :trees do |t|
      t.integer :x
      t.integer :y
      t.string :description

      t.timestamps
    end
  end
end
