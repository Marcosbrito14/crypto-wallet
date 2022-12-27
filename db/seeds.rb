#Use o rails dev:setup(lib/tasks/dev.rake)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#2 exemplo
# spinner = TTY::Spinner.new("[:spinner] Cadastrando Moedas...")
# spinner.auto_spin
#
# coins =
#         [
#            {
#              description: "Bitcoin",
#              acronym: "BTC",
#              url_image: "https://e7.pngegg.com/pngimages/261/204/png-clipart-bitcoin-bitcoin-thumbnail.png"
#            },
#            {
#              description: "Ethereum",
#              acronym: "ETH",
#              url_image: "https://img1.gratispng.com/20180516/ouw/kisspng-ethereum-cryptocurrency-blockchain-logo-eos-io-crypto-5afc9ab9b20d86.8643914515265041217293.jpg"
#            },
#            {
#              description: "Dash",
#              acronym: "DASH",
#              url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRKpB4KYcXUABmKqbFvJRPhbkcBtnUWWLciQ&usqp=CAU"
#            },
#            {
#              description: "Iota",
#              acronym: "IOT",
#              url_image: "https://thumbs.dreamstime.com/b/o-iota-descentralizou-logotipo-escuro-do-vetor-cryptocurrency-dos-pagamentos-das-internet-coisas-blockchain-109805090.jpg"
#            },
#            {
#              description: "ZCash",
#              acronym: "ZEC",
#              url_image: "https://cdn-icons-png.flaticon.com/512/1418/1418194.png"
#            }
#         ]
#
#Metodo find_or_create_by usado p/ procurar ou criar um modelo não encontrado
# coins.each do |coin|
#   sleep(1)#A cada iteração esperar 1 segundo
#   Coin.find_or_create_by!(coin)
# end
#
# spinner.success('(Concluido com sucesso!!!)')

#1 exemplo
# Coin.create!(
#   description: "Bitcoin",
#   acronym: "BTC",
#   url_image: "https://e7.pngegg.com/pngimages/261/204/png-clipart-bitcoin-bitcoin-thumbnail.png"
# )
#
# Coin.create!(
#   description: "Ethereum",
#   acronym: "ETH",
#   url_image: "https://img1.gratispng.com/20180516/ouw/kisspng-ethereum-cryptocurrency-blockchain-logo-eos-io-crypto-5afc9ab9b20d86.8643914515265041217293.jpg"
# )
#
# Coin.create!(
#   description: "Dash",
#   acronym: "DASH",
#   url_image: "https://www.pngall.com/wp-content/uploads/10/Dash-Crypto-Logo-PNG-HD-Image.png"
# )

#2 exemplo
#puts "Moedas cadastradas com sucesso!"
