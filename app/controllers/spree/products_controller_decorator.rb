Spree::Admin::ProductsController.class_eval do

  create.after :set_supplier

  def set_supplier
    @object.add_supplier!(spree_current_user.supplier) if spree_current_user.supplier
  end



end
