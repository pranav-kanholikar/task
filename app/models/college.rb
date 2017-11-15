class College < ApplicationRecord
    has_many :students, as: :imageable
end
