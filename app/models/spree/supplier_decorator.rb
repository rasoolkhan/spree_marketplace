Spree::Supplier.class_eval do
  has_attached_file :background,
    styles: { large: '1200x300>' },
    default_style: :large,
    url: '/spree/suppliers/background/:id/:style/:basename.:extension',
    path: ':rails_root/public/spree/suppliers/background/:id/:style/:basename.:extension',
    default_url: 'default_supplier_background.png'
  has_attached_file :avatar,
    styles: { small: '50x50', product:'300x300', large: '800x600>' },
    default_style: :product,
    url: '/spree/suppliers/avatar/:id/:style/:basename.:extension',
    path: ':rails_root/public/spree/suppliers/avatar/:id/:style/:basename.:extension',
    default_url: 'default_supplier_avatar.png'
end
