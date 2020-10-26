# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint           not null, primary key
#  text        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer          not null
#
class AnswerChoice < ApplicationRecord

    belongs_to :question, 
        foreign_key: :question_id, 
        class_name: :Question

    has_many :responses,    
        foreign_key: :answer_choice_id, 
        class_name: :Response
end
