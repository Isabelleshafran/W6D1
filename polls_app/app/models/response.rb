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
class Response < ApplicationRecord

    belongs_to :respondent, 
        foreign_key: :user_id, 
        class_name: :User

    belongs_to :answer_choice, 
        foreign_key: :answer_choice_id, 
        class_name: :AnswerChoice
end
