class Recrutement < ApplicationRecord
	has_many :requests
	belongs_to :club
end
