class CreateActionpoints < ActiveRecord::Migration
  def change
    create_table :actionpoints do |t|
      t.string :action
      t.string :status
      t.date :datum

      t.timestamps
    end
  end
end
