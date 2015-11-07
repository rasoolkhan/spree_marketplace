Deface::Override.new(virtual_path: 'spree/shared/_main_nav_bar',
  name: 'add_supplier_link_to_main_nav_bar',
  insert_after: 'li#home-link',
  text: '<li><%= link_to Spree.t(:suppliers), supplier_index_path %></li>'
)
