class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        #  def self.search(search)
        #   if search
        #     User.where(['content LIKE ?', "%#{search}%"])
        #   else
        #     User.all
        #   end
        # end

        #  has_many :images
        #  mount_uploader :image, ImagesUploader
end
