class AddAvatarToSpreeSupplier < ActiveRecord::Migration
  def change
    add_column :spree_suppliers, :avatar_file_name, :string
    add_column :spree_suppliers, :avatar_content_type, :string
    add_column :spree_suppliers, :avatar_file_size, :integer
    add_column :spree_suppliers, :avatar_updated_at, :timestamp
  end
end
