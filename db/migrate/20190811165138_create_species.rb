class CreateSpecies < ActiveRecord::Migration[5.2]
  def change
    create_table :species do |t|
      t.string :genus
      t.string :species
      t.string :cultivar
      t.boolean :hybrid
      t.string :common_name
      t.text :description
      t.string :wiki

      t.timestamps
    end
  end
end
