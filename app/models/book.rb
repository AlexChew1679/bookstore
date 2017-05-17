class Book < ApplicationRecord
  belongs_to :user
  has_attached_file :image
  has_attached_file :resource
  #it means each book will have 2 files attachment, image and resource.
end
