class AddBackgroundImageToSpreeSupplier < ActiveRecord::Migration
  def change
    add_column :spree_suppliers, :background_file_name, :string
    add_column :spree_suppliers, :background_content_type, :string
    add_column :spree_suppliers, :background_file_size, :integer
    add_column :spree_suppliers, :background_updated_at, :timestamp
  end
end
