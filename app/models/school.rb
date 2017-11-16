# == Schema Information
#
# Table name: schools
#
#  id         :integer          not null, primary key
#  sname      :string
#  principle  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class School < ApplicationRecord
    has_many :students, as: :imageable
end
