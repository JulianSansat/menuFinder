# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |j|
    10.times do |n|
        Product.create(
            name: "Produto #{n}",
            kind: "tipo de produto",
            description: "descrição do produto #{n}" ,
            price: "9,90",
            image: "http://www.upah.com.br/media/catalog/product/cache/1/thumbnail/800x/17f82f742ffe127f42dca9de82fb58b1/p/a/papel-para-lanche-hamburguer.jpg",
            establishment_id: j
        )
    end
end