class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.references :product, foreign_key: true
      t.string :name
      t.decimal :unit_price
      t.timestamps
    end
  end
end
