def create_products(vendor, arr)
  arr.each { |name| vendor.products.create(name: name) }
end

create_products(Vendor.create(name: 'Hmbldt'), ['Sleep Pen', 'Relax Pen'])
create_products(Vendor.create(name: 'Valhalla'), ['CBD Gummies', 'Indica Gummies'])

Vendor.create(name: 'Kiva')

create_products(Vendor.create(name: 'Pax'), ['Era Vape Pen'])
create_products(Vendor.create(name: 'Himalaya'), ['Blue Dream Cartridge', 'Sour Diesel Cartridge'])
