class Dog < ApplicationRecord
	belongs_to :city
	has_and_belongs_to_many :dogs
	has_many :dogsitters, through: :strolls
end
