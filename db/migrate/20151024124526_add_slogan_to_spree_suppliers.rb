class AddSloganToSpreeSuppliers < ActiveRecord::Migration
  def change
    add_column :spree_suppliers, :slogan, :string
    add_column :spree_suppliers, :description, :string
  end
end
