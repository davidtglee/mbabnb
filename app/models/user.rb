class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :messages_as_sender, :class_name => "Message", :foreign_key => "sender_id", :dependent => :destroy
  has_many :messages_as_receiver, :class_name => "Message", :foreign_key => "receiver_id", :dependent => :destroy
  has_many :listings, :dependent => :destroy

end
