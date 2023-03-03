class MiningType < ApplicationRecord
  validates :description, :acronym, presence: true
  has_many :coins
end
