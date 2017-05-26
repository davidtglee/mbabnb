class Message < ApplicationRecord
  belongs_to :sending_user, :class_name => "User", :foreign_key => "sender_id"
  belongs_to :user_as_receiver, :class_name => "User", :foreign_key => "receiver_id"

end
