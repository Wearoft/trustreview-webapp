# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Sector.destroy_all
hotel = Sector.create name: 'Hoteles'
restaurant = Sector.create name: 'Restaurantes'

Partner.destroy_all
partner1 = Partner.create name: 'El Fuerte', sector: hotel, address: 'Calle El Fuerte, s/n', zip_code: '29600', city: 'Marbella', province: 'Málaga', phone: '952 770 000'
partner2 = Partner.create name: 'Da Bruno', sector: restaurant, address: 'Paseo Marítimo, s/n', zip_code: '29600', city: 'Marbella', province: 'Málaga', phone: '952 880 000'
partner3 = Partner.create name: 'Los Mellizos', sector: restaurant, address: 'Paseo Marítimo, s/n', zip_code: '29600', city: 'Marbella', province: 'Málaga', phone: '952 990 000'
partner4 = Partner.create name: 'La Venencia', sector: restaurant, address: 'Avenida La Fontailla, 4', zip_code: '29600', city: 'Marbella', province: 'Málaga', phone: '952 660 000'

Client.destroy_all
client1 = Client.create name: 'Salvador', email: 'salva@salvaruiz.me'
client2 = Client.create name: 'Eugenio', email: 'eugenio@marbella.es'
client3 = Client.create name: 'Juan', email: 'Juan@marbella.es'

Review.destroy_all
review1 = Review.create partner: partner1, client: client1, starts: 5, review: 'Me atendieron muy rápido, cómodo y económico.'
review2 = Review.create partner: partner2, client: client1, starts: 3, review: 'La comida es buena pero los precios algo caros.'
review3 = Review.create partner: partner3, client: client2, starts: 4, review: 'Buena comida y excelente servicio.'
review4 = Review.create partner: partner3, client: client3, starts: 1, review: 'No me gustó la comida y el servicio deja mucho que desear. No lo recomiendo.'
