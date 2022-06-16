require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up database"
Company.destroy_all
puts "database is clean"

# puts "Creating companies"
# 10.times do
#   company = Company.create!(
#     name: Faker::Company.name,
#     address: ["Avenida Paulista, 1000"].sample,
#     equety: 500000,
#     net_inc: 100000,
#     activity: Faker::Company.type,
#     description: Faker::Company.industry,
#     max_max_tokens: 100,
#     sold_tokens: 0,
#     price_of_token: rand(1..5)
#   )
#   puts "company with id:#{company.id} is created!"
# end
# company = Company.create!(
#   name: Faker::Company.name,
#   address: ["Rua Olimpiadas, 23"],
#   equety: 500000,
#   net_inc: 100000,
#   activity: Faker::Company.type,
#   description: Faker::Company.industry,
#   max_tokens: 100,
#   sold_tokens: 0,
#   price_of_token: rand(1..5)
# )
# puts "Done!"

company = Company.create!(sold_tokens: 0, name: 'Cadê o tio?', address: 'Av. Paulista. 1552 São Paulo SP', equety: '80313', net_inc: '1489120', activity: 'Tecnologia da Informação', description: 'Soluções voltadas para mobilidade urbana', max_tokens: '3000', price_of_token: '10', image_url: 'cadeotio.jpg')

company = Company.create!(sold_tokens: 0, name: 'Marco Polo', address: 'Av Marcopolo. 280 Caxias Do Sul - RS', equety: '190947', net_inc: '190950', activity: 'Bens Industriais', description: 'Material Rodoviario', max_tokens: '1000', price_of_token: '10', image_url: 'marcopolo.jpg')

company = Company.create!(sold_tokens: 0, name: 'Wilson Sons', address: 'Av Alexandre Colares. 1188 São Paulo SP', equety: '121414', net_inc: '2005282', activity: 'Bens Industriais', description: 'Serviços de Apoio e Armazenagem', max_tokens: '1000', price_of_token: '10', image_url: 'wilsonson.jpg')

company = Company.create!(sold_tokens: 0, name: 'San Martinho', address: 'Av Marcopolo. 280 Caxias Do Sul - RS', equety: '491706', net_inc: '3289775', activity: 'Consumo não cíclico', description: 'Açucar e Alcool', max_tokens: '1000', price_of_token: '10', image_url: 'saomartinho.png')

company = Company.create!(sold_tokens: 0, name: 'Natura', address: 'Av Alexandre Colares. 1188 São Paulo SP', equety: '548379', net_inc: '2574102', activity: 'Consumo não cíclico', description: 'Produtos de uso pessoal', max_tokens: '1000', price_of_token: '10', image_url: 'natura.jpg')

company = Company.create!(sold_tokens: 0, name: 'Grupo Mateus', address: 'Av. Daniel de la Touche, 73A - Cohama', equety: '337695', net_inc: '1949287', activity: 'Consumo não cíclico', description: 'Alimentos', max_tokens: '1000', price_of_token: '10', image_url: 'grupomateus.jpg')

company = Company.create!(sold_tokens: 0, name: 'Coelce', address: 'R Padre Valdevino. 150 Fortaleza CE', equety: '265181', net_inc: '3230548', activity: 'Utilidade Pública', description: 'Energia Elétrica', max_tokens: '1000', price_of_token: '10', image_url: 'coelce.jpg')

company = Company.create!(sold_tokens: 0, name: 'Eneva', address: 'Av Alexandre Colares. 1188 São Paulo SP', equety: '1006536', net_inc: '7930740', activity: 'Utilidade Pública', description: 'Energia Elétrica', max_tokens: '1000', price_of_token: '10', image_url: 'ENEVA1.png')

company = Company.create!(sold_tokens: 0, name: 'Simpar', address: 'Av Marcopolo. 280 Caxias Do Sul - RS', equety: '251034', net_inc: '2549984', activity: 'Mercado financeiro', description: 'Holdings', max_tokens: '1000', price_of_token: '10', image_url: 'Simpar.jpg')

company = Company.create!(sold_tokens: 0, name: 'JSHF', address: 'Av. Daniel de la Touche, 73A - Cohama', equety: '1954390', net_inc: '2267248', activity: 'Construção Civil', description: 'Edificações', max_tokens: '1000', price_of_token: '10', image_url: 'JHSF.jpg')

company = Company.create!(sold_tokens: 0, name: 'Lelis Blanc', address: 'R Padre Valdevino. 150 Fortaleza CE', equety: '103463', net_inc: '2225873', activity: 'Comércio', description: 'Tecidos, Vestuários e Calçados', max_tokens: '1000', price_of_token: '10', image_url: 'LELISBLANC.jpg')

company = Company.create!(sold_tokens: 0, name: 'Suzano Papel', address: 'Av. Daniel de la Touche, 73A - Cohama', equety: '318460', net_inc: '12025935', activity: 'Madeira e Papel', description: 'Papel e Celulose', max_tokens: '1000', price_of_token: '10', image_url: 'SUZANO.jpg')

company = Company.create!(sold_tokens: 0, name: 'Totvs', address: 'R Padre Valdevino. 150 Fortaleza CE', equety: '60643', net_inc: '1288220', activity: 'Tecnologia da Informação', description: 'Programas e Serviços', max_tokens: '1000', price_of_token: '10', image_url: 'TOTVS.jpg')


p "created #{Company.count} companies"
