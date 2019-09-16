class Request < ApplicationRecord
	belongs_to :recrutement
	belongs_to :user
end
