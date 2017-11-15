class School < ApplicationRecord
    has_many :students, as: :imageable
end
