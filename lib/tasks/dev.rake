namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando Banco de Dados...") { %x(rails db:drop) }#Bloco para exibir no yield
      show_spinner("Criando Banco de Dados...") { %x(rails db:create) }
      show_spinner("Migrando as Tabelas do Banco de Dados...") { %x(rails db:migrate) }
      %x(rails dev:add_mining_types)#Adicionar tipo de mineração primeiro por causa do belongs_to
      %x(rails dev:add_coins)

      # spinner = TTY::Spinner.new("[:spinner] Apagando Banco de Dados...")
      # spinner.auto_spin
      # %x(rails db:drop)
      # spinner.success('(Concluido com sucesso!!!)')
      #
      # spinner = TTY::Spinner.new("[:spinner] Criando Banco de Dados...")
      # spinner.auto_spin
      # %x(rails db:create)
      # spinner.success('(Concluido com sucesso!!!)')
      #
      # spinner = TTY::Spinner.new("[:spinner] Migrando as Tabelas do Banco de Dados...")
      # spinner.auto_spin
      # %x(rails db:migrate)
      # spinner.success('(Concluido com sucesso!!!)')
      #
      # spinner = TTY::Spinner.new("[:spinner] Preenchendo as Tabelas do Banco de Dados...")
      # spinner.auto_spin
      # %x(rails db:seed)
      # spinner.success('(Concluido com sucesso!!!)')
    else
      puts "Você não esta em ambiente de desenvolvimento!"
    end
  end

  desc "Cadastro de Moedas"
  task add_coins: :environment do
    show_spinner("Cadastrando Moedas...") do
      coins =
              [
                 {
                   description: "Bitcoin",
                   acronym: "BTC",
                   url_image: "https://e7.pngegg.com/pngimages/261/204/png-clipart-bitcoin-bitcoin-thumbnail.png",
                   mining_type: MiningType.find_by(acronym: "PoW")
                 },
                 {
                   description: "Ethereum",
                   acronym: "ETH",
                   url_image: "https://img1.gratispng.com/20180516/ouw/kisspng-ethereum-cryptocurrency-blockchain-logo-eos-io-crypto-5afc9ab9b20d86.8643914515265041217293.jpg",
                   mining_type: MiningType.all.sample#Aplica um tipo de mineração aleatoria
                 },
                 {
                   description: "Dash",
                   acronym: "DASH",
                   url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRKpB4KYcXUABmKqbFvJRPhbkcBtnUWWLciQ&usqp=CAU",
                   mining_type: MiningType.all.sample
                 },
                 {
                   description: "Iota",
                   acronym: "IOT",
                   url_image: "https://thumbs.dreamstime.com/b/o-iota-descentralizou-logotipo-escuro-do-vetor-cryptocurrency-dos-pagamentos-das-internet-coisas-blockchain-109805090.jpg",
                   mining_type: MiningType.all.sample
                 },
                 {
                   description: "ZCash",
                   acronym: "ZEC",
                   url_image: "https://cdn-icons-png.flaticon.com/512/1418/1418194.png",
                   mining_type: MiningType.all.sample
                 }
              ]

      coins.each do |coin|
        sleep(1)
        Coin.find_or_create_by!(coin)
      end
    end
  end

  desc "Cadastra os tipos de Mineração"
  task add_mining_types: :environment do
    show_spinner("Cadastrando tipos de Mineração...") do
      mining_types = [
        {description: "Proof of Work", acronym: "PoW"},
        {description: "Proof of Stake", acronym: "PoS"},
        {description: "Proof of Capacity", acronym: "PoC"}
      ]

      mining_types.each do |mining_type|
        MiningType.find_or_create_by!(mining_type)
      end
    end
  end



  private

  def show_spinner(msg_start, msg_end = "Concluido com sucesso!!!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield#{ %x(rails db:...) } sendo executado
    spinner.success("(#{msg_end})")
  end
end
