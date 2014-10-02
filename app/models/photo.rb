class Photo < ActiveRecord::Base


  belongs_to :user
  belongs_to :product
  belongs_to :imageable, polymorphic: true

  has_attached_file :photo, :styles => {:biggest => "900x900>", :big => "600x600>", :medium => "400x400>", :small => "200x200>", :smallest =>"100x100>" },
                    :url  => ":s3_domain_url",
                    :path => "/:class/:attachment/:id_partition/:style/:filename"

  extend FriendlyId
  friendly_id :image, use: :slugged



end
