class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
        :recoverable, :validatable, :rememberable, :trackable, :omniauthable, :omniauth_providers => [:twitter]

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

	def addToEmailList
		
	end
end