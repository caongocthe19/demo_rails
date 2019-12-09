class AddAndRemoveTableProductAndService < ActiveRecord::Migration[5.2]
  def self.up
    remove_column :services, :product_id
    add_reference :products, :services, index: true
  end

  def self.down
    add_column :services, :product_id, :integer
    remove_column :products, :service_id
  end
end
