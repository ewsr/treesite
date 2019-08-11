class AddSpeciesToTrees < ActiveRecord::Migration[5.2]
  def change
    add_reference :trees, :species, foreign_key: true
  end
end
