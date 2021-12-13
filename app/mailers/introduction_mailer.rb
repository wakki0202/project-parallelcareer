class IntroductionMailer < ApplicationMailer
  def complete_introduction(introduction,work,current_user)
    @introduction = introduction
    @work = work
    @current_user = current_user
    mail(
    to: 'ytk0202@outlook.jp',
    subject: '口コミのお知らせ'
    )
  end
end
