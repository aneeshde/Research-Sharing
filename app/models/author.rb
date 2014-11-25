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

class Author < ActiveRecord::Base
  # Include default devise modules. Others available are:

  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :login
  # Setup accessible (or protected) attributes for your model
  attr_accessible :authorname, :email, :password, :password_confirmation, :remember_me, :login
  # attr_accessible :title, :body

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
