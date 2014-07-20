class CreateContactpersoons < ActiveRecord::Migration
  def change
    create_table :contactpersoons do |t|
      t.string :name
      t.string :function
      t.string :mail
      t.string :telephone
      t.text :note

      t.timestamps
    end
  end
end
