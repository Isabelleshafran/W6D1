# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  response         :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer          not null
#  answer_choice_id :integer          not null
#
require 'test_helper'

class ResponseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
