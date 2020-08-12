class Language < ApplicationRecord

    validates :name, presence: true, uniqueness: true, length: { minimum: 2, maximum: 40}

    has_many :countries
end
