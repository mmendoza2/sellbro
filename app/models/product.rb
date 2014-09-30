class Product < ActiveRecord::Base

  belongs_to :user
  belongs_to :subcategory

  has_attached_file :photo, :styles => {:biggest => "900x900>", :medium => "500x500>"},
                    :url  => ":s3_domain_url",
                    :path => "/:class/:attachment/:id_partition/:style/:filename"
  extend FriendlyId
  friendly_id :name, use: :slugged

end
