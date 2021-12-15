class QuestionMailer < ApplicationMailer
  def complete_question(question)
    @question = question
    mail(
    to: 'tanachu_78@yahoo.co.jp',
    subject: 'お問い合わせが来ました！'
    )
  end
end
