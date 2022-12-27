class Coin < ApplicationRecord
#Coin pertence a mining_type ou seja Moedas pertecem a tipos de mineração
  belongs_to :mining_type#, optional: true#Deixa o belongs_to opcional na hora de rodar a task dev:setup
end
