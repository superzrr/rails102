class Group < ActiveRecord::Base
 belong_to :user
 validates :title, presence: true
 validates :description, presence: true
end