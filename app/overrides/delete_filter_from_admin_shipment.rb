Deface::Override.new(virtual_path: 'spree/admin/shipments/index',
  name: 'delete_filter_from_admin_shipment',
  remove: 'erb:contains("f.select :state_eq")'
)

Deface::Override.new(virtual_path: 'spree/admin/shipments/index',
  name: 'delete_no_obj_found_from_admin_shipment',
  remove: '.no-objects-found'
)
