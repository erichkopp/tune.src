class Tune < ApplicationRecord
	belongs_to :user
	has_one_attached :video
	has_many :comments, dependent: :destroy

	validates :tunename, presence: true
	validates :key, presence: true
	# validates :fiddle_tuning, presence: true
	validates :notes, length: {maximum: 500, too_long: "can't be more than 500 characters"}, on: :create
	validate :video_and_type

	private
		def video_and_type
			if video.attached? && !video.content_type.in?(%w(video/mp4))
				errors.add(:video, "must be mp4")
			elsif video.attached? == false
				errors.add(:video, "must have a file attached")
		end
	end
	
end





