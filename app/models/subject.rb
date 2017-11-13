class Subject < ApplicationRecord
    belongs_to :student
    validates :name, presence: true, uniqueness: true
end
