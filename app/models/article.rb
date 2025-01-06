class Article < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: { minimum: 3, maximim: 50 }
  validates :description, presence: true, length: { minimum: 10, maximim: 300 }
  validates :user_id, presence: true
end
