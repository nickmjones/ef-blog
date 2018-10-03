class Post < ApplicationRecord
  # associations
  belongs_to :author

  # search
  include PgSearch
  pg_search_scope :search_by_full_post, against: [:title, :body]

  # slug
  extend FriendlyId
  friendly_id :title, use: :slugged

  # active storage
  has_one_attached :image

  # scopes
  scope :is_published, -> { where("is_published = true") }
  scope :is_draft, -> { where("is_published = false") }
  scope :with_preloaded_image, -> { preload(image_attachment: :blob) }
end
