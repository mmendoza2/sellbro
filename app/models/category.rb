class Category < ActiveRecord::Base

  has_many :subcategories

  has_attached_file :photo, :styles => {:biggest => "900x900>", :big => "610x610>", :medium => "500x500>", :small => "250x250>", :smallest =>"100x100>" },
                    :url  => ":s3_domain_url",
                    :path => "/:class/:attachment/:id_partition/:style/:filename"
  extend FriendlyId
  friendly_id :name, use: :slugged
end
