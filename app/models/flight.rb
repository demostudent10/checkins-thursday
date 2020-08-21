# == Schema Information
#
# Table name: flights
#
#  id           :integer          not null, primary key
#  departs_at   :datetime
#  description  :string
#  message_sent :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#
class Flight < ApplicationRecord
  belongs_to(:user, { :required => false, :class_name => "User", :foreign_key => "user_id" })

  validates(:departs_at, { :presence => true })
end
