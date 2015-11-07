Deface::Override.new(virtual_path: 'spree/admin/products/new',
  name: 'add_js_for_select_default_shipping_cat_of_product',
  insert_after: 'script',
  text: "<script>
    $(function() {
      // Hide shipping category combobox if only one shipping category exists
      var $select = $('select[name=\"product[shipping_category_id]\"]');
      if ($select.find('option').size() == 2) {
        $select.val(1);
        $('div[data-hook=\"new_product_shipping_category\"]').hide();
      }
    });
  </script>"
)
