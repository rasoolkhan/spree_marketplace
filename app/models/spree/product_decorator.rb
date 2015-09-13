Spree::Product.class_eval do
  private

  def populate_for_supplier!(supplier)
    variants_including_master.each do |variant|
      unless variant.suppliers.pluck(:id).include?(supplier.id)
        variant.suppliers << supplier
        supplier.stock_locations.each { |location| location.set_up_stock_item(variant) }
      end
    end
  end

end
