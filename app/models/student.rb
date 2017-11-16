# == Schema Information
#
# Table name: students
#
#  id             :integer          not null, primary key
#  name           :string
#  age            :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#  imageable_id   :integer
#  imageable_type :string
#

class Student < ApplicationRecord
    has_many :subjects, dependent: :destroy

    validates :name, :age, presence: true
    validates :name, uniqueness: true
    validates :age, numericality: { only_integer: true }


    belongs_to :user

     belongs_to :imageable, polymorphic: true

end
