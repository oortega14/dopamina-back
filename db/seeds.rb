puts 'Creating categories'

[
  'Pines Medicina',
  'Pines Motivos',
  'Portacarnets Hombre',
  'Portacarnets Mujer'
].each do |category_name|
  Category.find_or_create_by!(name: category_name)
end
