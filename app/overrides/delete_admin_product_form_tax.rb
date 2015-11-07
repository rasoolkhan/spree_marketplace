Deface::Override.new(virtual_path: 'spree/admin/products/_form',
  name: 'delete_admin_product_form_tax',
  replace: 'div[data-hook="admin_product_form_tax_category"]',
  text: "<div data-hook=\"admin_product_form_tax_category\">
    <% if can? :admin, Spree::TaxCategory %>
      <%= f.field_container :tax_category, class: ['form-group'] do %>
        <%= f.label :tax_category_id, Spree.t(:tax_category) %>
        <%= f.collection_select(:tax_category_id, @tax_categories, :id, :name, { include_blank: Spree.t('match_choices.none') }, { class: 'select2', disabled: (cannot? :edit, Spree::TaxCategory) }) %>
        <%= f.error_message_on :tax_category %>
      <% end %>
    <% end %>
  </div>"
)
