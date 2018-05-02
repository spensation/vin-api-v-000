class Producer < ApplicationRecord
	has_one :appellation
	has_one :country, :through => :appellation

	has_many :wines
end
