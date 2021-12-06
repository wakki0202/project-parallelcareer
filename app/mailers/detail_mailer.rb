class DetailMailer < ApplicationMailer
  def detail_introduction(provider,current_user)
      @provider = provider
    @current_user = current_user
    mail(
    to: 'ytk0202@outlook.jp',
    subject: '口コミのお知らせ'
    )
  end
end
