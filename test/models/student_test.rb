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

require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
