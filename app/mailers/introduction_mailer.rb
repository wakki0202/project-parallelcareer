class IntroductionMailer < ApplicationMailer
  def complete_introduction(introduction,provider,current_user)
    @introduction = introduction
    @provider = provider
    @current_user = current_user
    mail(
    to: 'tanachu_78@yahoo.co.jp',
    subject: '口コミのお知らせ'
    )
  end
end
