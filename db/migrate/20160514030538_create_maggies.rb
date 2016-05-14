class CreateMaggies < ActiveRecord::Migration
  def change
    create_table :maggies do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.text :remark

      t.timestamps null: false
    end
  end
end
