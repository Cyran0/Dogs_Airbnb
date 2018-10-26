class City < ApplicationRecord
	has_many :dogsitter
	has_many :dogs
	has_many :strolls
end
