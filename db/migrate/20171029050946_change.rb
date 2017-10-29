class Change < ActiveRecord::Migration[5.1]
  def change
    change_table :complaints do |t|
      t.string :name
      t.string :address
      t.date :date
      t.string :why
      t.string :clothes
      t.string :reason
      t.string :how
      t.string :deserve
    end
  end
end
