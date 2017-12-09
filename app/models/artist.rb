class Artist < ApplicationRecord
	has_many :albums
	has_many :songs,through: :albums

	validates :name, presence: true
	validates :image_url, presence: true
end
