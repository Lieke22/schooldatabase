class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :type
      t.string :status
      t.date :datum
      t.string :name_user
      t.text :note

      t.timestamps
    end
  end
end
