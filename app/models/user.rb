class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar,:styles => { :medium => "300x300>", :thumb => "100x100>" }

  # Setup accessible (or protected) attributes for your model
  
  has_many :articles
  has_many :comments
  
end
