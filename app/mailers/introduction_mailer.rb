class IntroductionMailer < ApplicationMailer
  def complete_introduction(introduction,provider,current_user)
    @introduction = introduction
    @provider = provider
    @current_user = current_user
    mail(
    to: 'ytk0202@outlook.jp',
    subject: '口コミのお知らせ'
    )
  end
end
