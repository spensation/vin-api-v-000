class Varietal < ApplicationRecord
	has_and_belongs_to_many :appellations
end
