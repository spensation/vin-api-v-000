class Appellation < ApplicationRecord
	belongs_to :country
	belongs_to :producer

	has_and_belongs_to_many :varietals
end
