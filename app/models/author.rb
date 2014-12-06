# == Schema Information
#
# Table name: authors
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  authorname             :string(255)
#

#  authorname             :string(255)

#  name                   :string(255)



class Author < ActiveRecord::Base
  # Include default devise modules. Others available are:

  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #for facebook
  devise :omniauthable, :omniauth_providers => [:facebook]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |author|
      author.email = auth.info.email 
      author.password = Devise.friendly_token[0,20]
      author.authorname = auth.info.name   # assuming the user model has a name
      # author.image = auth.info.image # assuming the user model has an image
    end
  end

    def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @author = Authors.from_omniauth(request.env["omniauth.auth"])

    if @author.persisted?
      sign_in_and_redirect @author, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_author_registration_url
    end
  end

  def self.new_with_session(params, session)
    super.tap do |author|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        author.email = data["email"] if author.email.blank?
      end
    end
  end


  attr_accessor :login
  # Setup accessible (or protected) attributes for your model
  attr_accessible :authorname, :email, :password, :password_confirmation, :remember_me, :login
  # attr_accessible :title, :body
  validates :authorname, :email, :password, :presence => true
  validates :authorname,uniqueness: true

  has_many :papers

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      #where(conditions).where(["lower(authorname) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      where(conditions).where(["authorname = :value OR lower(email) = lower(:value)", { :value => login }]).first
    else
      where(conditions).first
    end
  end
end
