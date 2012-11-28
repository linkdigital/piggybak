class AddPaypalProfileIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :paypal_profile_id, :string, :nil => true, :default => false
  end
end
