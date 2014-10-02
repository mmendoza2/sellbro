class Product < ActiveRecord::Base

  has_many :images, as :imageable
  belongs_to :user
  belongs_to :subcategory

  has_attached_file :photo, :styles => {:biggest => "900x900>", :medium => "500x500>", :small => "300x300>"},
                    :url  => ":s3_domain_url",
                    :path => "/:class/:attachment/:id_partition/:style/:filename"
  extend FriendlyId
  friendly_id :name, use: :slugged

end
