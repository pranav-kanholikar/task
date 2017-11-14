class Student < ApplicationRecord
    has_many :subjects, dependent: :destroy

    validates :name, :age, presence: true
    validates :name, uniqueness: true
    validates :age, numericality: { only_integer: true }


    belongs_to :user

end
