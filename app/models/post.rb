class Post < ActiveRecord::Base
  validates :title, clickbait: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validates :title, clickbait: true
end
