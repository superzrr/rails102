class Group < ActiveRecord::Base
	 has_many :posts
	 belongs_to :user
	 validates :title, presence: true
	 validates :description, presence: true

	 has_many :group_relationships
	 has_many :members, through: :group_relationships, source: :user
end