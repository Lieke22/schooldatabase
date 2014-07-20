class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.text :address
      t.string :postcode
      t.string :town
      t.string :telephone
      t.string :website
      t.text :note

      t.timestamps
    end
  end
end
