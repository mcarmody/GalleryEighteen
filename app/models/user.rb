class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
        :recoverable, :validatable, :rememberable, :trackable, :omniauthable, :omniauth_providers => [:twitter]

    has_many :relationships, foreign_key: "follower_id", dependent: :destroy
    has_many :followed_users, through: :relationships, source: :followed

    has_many :reverse_relationships, foreign_key: "followed_id",
                                   class_name:  "Relationship",
                                   dependent:   :destroy
    has_many :followers, through: :reverse_relationships, source: :follower
    has_many :items, dependent: :destroy

    has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png", :storage => :s3
 	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	def self.find_for_twitter_oauth(auth)
	  where(auth.slice(:provider, :uid)).first_or_create do |user|
	      user.provider = auth.provider
	      user.uid = auth.uid
	      user.email = auth.info.email
	      user.password_confirmation = user.password = Devise.friendly_token[0,20]
	      user.name = auth.info.name   # assuming the user model has a name
	      user.image = auth.info.profile_image_url # assuming the user model has an image
	    end
  	end


	def self.new_with_session(params, session)
	    super.tap do |user|
	      if data = session["devise.twitter_data"]
	        user.email = data["email"] if user.email.blank?
	      end
	    end
	end

	def following?(other_user)
		relationships.find_by(followed_id: other_user.id)
	end

	def follow!(other_user)
		relationships.create!(followed_id: other_user.id)
	end

	def unfollow!(other_user)
	    relationships.find_by(followed_id: other_user.id).destroy
	end

	def addToEmailList
	end
end