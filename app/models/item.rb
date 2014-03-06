class Item < ActiveRecord::Base

	belongs_to :user
	#default_scope -> {order('created at DESC')}
	#validates :user_id, presence: true

	has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png",
  						:url => "/assets/items/:id/:style/:basename.:extension",
  						:path => ":rails_root/public/assets/items/:id/:style/:basename.:extension"

  	validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

end
