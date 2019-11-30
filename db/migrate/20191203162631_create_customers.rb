class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
