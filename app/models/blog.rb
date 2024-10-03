class Blog < ApplicationRecord
  has_one_attached :image

  def image_variants
    image.variant(resize_to_limit: [300, 300]) # Example for a thumbnail
  end

end
