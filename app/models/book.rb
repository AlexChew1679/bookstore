class Book < ApplicationRecord
  belongs_to :user
  has_attached_file :image
  has_attached_file :resource
  #it means each book will have 2 files attachment, image and resource.
  validates_attachment :image, presence: true ,
  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
  message: 'Only Images allowed'

  validates_attachment :resource, presence: true ,
  content_type: { content_type: "application/pdf" },
  message: 'Only PDF allowed '

end
