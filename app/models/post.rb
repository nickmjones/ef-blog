class Post < ApplicationRecord
  #associations
  belongs_to :author
  #search
  include PgSearch
  pg_search_scope :search_by_full_post, against: [:title, :body]
  #slug
  extend FriendlyId
  friendly_id :title, use: :slugged
  #active storage
  has_one_attached :image
end
