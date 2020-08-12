class Servercenter < ApplicationRecord

  validates :code, presence: true, uniqueness: true, length: { minimum: 2, maximum: 40}
  validates :country, presence: true
  validates :server_available, numericality: { message: "Value seems wrong, Please enter numbers" }
  validates :servers_capacity, length: { minimum: 3, maximum: 140}
  belongs_to :country, :foreign_key => "country_id"
end
