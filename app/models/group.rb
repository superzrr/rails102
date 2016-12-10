class Group < ActiveRecord::Base
	 has_many :posts
	 belongs_to :user
	 validates :title, presence: true
	 validates :description, presence: true
end