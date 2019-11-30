class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.references :service, foreign_key: true
      t.decimal :total_price
      t.string :description

      t.timestamps
    end
  end
end
