# == Schema Information
#
# Table name: subjects
#
#  id          :integer          not null, primary key
#  name        :string
#  publication :string
#  teacher     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  student_id  :integer
#

class Subject < ApplicationRecord
    belongs_to :student
    validates :name, presence: true, uniqueness: true
end
