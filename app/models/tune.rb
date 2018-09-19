class Tune < ApplicationRecord
	belongs_to :user
	has_one_attached :video

	validates :tunename, presence: true
	validates :key, presence: true
	validates :tuning, presence: true
	validates :notes, length: {maximum: 500, too_long: "can't be more than 500 characters"}, on: :create
end
