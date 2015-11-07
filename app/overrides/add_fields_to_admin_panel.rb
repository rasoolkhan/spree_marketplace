Deface::Override.new(virtual_path: 'spree/admin/suppliers/_form',
  name: 'add_slogan_to_admin_panel',
  insert_before: 'erb:contains("spree_current_user.admin?")',
  text:
    "<%= form.field_container :slogan, class: ['form-group'] do %>
      <%= form.label :slogan, Spree.t(:slogan) %>:<br />
      <%= form.text_field :slogan, :class => 'form-control' %>
    <% end %>"
)

Deface::Override.new(virtual_path: 'spree/admin/suppliers/_form',
  name: 'add_description_to_admin_panel',
  insert_after: 'div[data-hook="supplier_details_wrapper"]',
  text:
    "<div class=\"col-md-12\">
      <%= form.field_container :description, class: ['form-group'] do %>
        <%= form.label :description, Spree.t(:description) %>:<br />
        <%= form.text_area :description, :class => 'form-control', rows: 8 %>
      <% end %>
    </div>"
)

Deface::Override.new(virtual_path: 'spree/admin/suppliers/_form',
  name: 'add_background_to_admin_panel',
  insert_before: 'erb:contains("spree_current_user.admin?")',
  text:
    "<%= form.field_container :background, class: ['form-group'] do %>
      <%= form.label :background, Spree.t(:background) %>
      <%= form.file_field :background %>
    <% end %>"
)

Deface::Override.new(virtual_path: 'spree/admin/suppliers/_form',
  name: 'add_avatar_to_admin_panel',
  insert_before: 'erb:contains("spree_current_user.admin?")',
  text:
    "<%= form.field_container :avatar, class: ['form-group'] do %>
      <%= form.label :avatar, Spree.t(:avatar) %>
      <%= form.file_field :avatar %>
    <% end %>"
)
