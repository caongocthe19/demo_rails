class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :customer, foreign_key: true
      t.string :name
      t.integer :quanlity
      t.integer :weight
      t.datetime :receiving_date

      t.timestamps
    end
  end
end
