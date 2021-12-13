class QuestionMailer < ApplicationMailer
  def complete_question(question)
    @question = question
    mail(
    to: 'ytk0202@outlook.jp',
    subject: 'お問い合わせが来ました！'
    )
  end
end
