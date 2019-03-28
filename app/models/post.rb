class Post < ApplicationRecord

  paginates_per 5

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
  scope :is_published,              -> { where("is_published = true") }
  scope :is_draft,                  -> { where("is_published = false") }
  scope :with_preloaded_image,      -> { preload(image_attachment: :blob) }
  scope :is_included_in_index,      -> { where("is_included_in_index = true") }
  scope :is_hidden_in_index,  -> { where("is_included_in_index = false") }

  # reading time
  def word_count
    self.body.split.size
  end

  def reading_time
    (word_count / 180.0).ceil
  end
end
