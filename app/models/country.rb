class Country < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { minimum: 2, maximum: 40}
    validates :language, presence: true
    belongs_to :language, :foreign_key => "language_id"
    has_many :servercenters, :dependent => :delete_all
end
