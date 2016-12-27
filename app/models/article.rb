class Article < ApplicationRecord
  validates :title, :text, presence: true

  mount_uploader :images, ArticleUploader

end
