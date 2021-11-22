class CreateBreeds < ActiveRecord::Migration[6.1]
  def change
    create_table :breeds do |t|
      t.string :name
      t.string :description
      t.belongs_to :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
