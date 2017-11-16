# == Schema Information
#
# Table name: colleges
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :string
#  streat     :string
#  department :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class College < ApplicationRecord
    has_many :students, as: :imageable
end
