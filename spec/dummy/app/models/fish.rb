# == Schema Information
#
# Table name: fish
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Fish < ApplicationRecord
  belongs_to :user, optional: true
  has_many :reviews, as: :reviewable

  def release
    # Dummy method
  end
end
