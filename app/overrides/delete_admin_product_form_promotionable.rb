Deface::Override.new(virtual_path: 'spree/admin/products/_form',
  name: 'delete_admin_product_form_promotionable',
  replace: 'div[data-hook="admin_product_form_promotionable"]',
  text: "<div data-hook=\"admin_product_form_promotionable\">
    <% if can? :admin, Spree::Promotion %>
      <%= f.field_container :promotionable, class: ['form-group'] do %>
          <%= f.label :promotionable, Spree.t(:promotionable) %>
          <%= f.error_message_on :promotionable %>
          <%= f.check_box :promotionable, class: 'form-control' %>
      <% end %>
    <% end %>
  </div>"
)

# Deface::Override.new(virtual_path: 'spree/admin/shared/sub_menu/_promotion',
#   name: 'delete_admin_promotion_tab',
#   remove: '#sidebar-promotions'
# )
