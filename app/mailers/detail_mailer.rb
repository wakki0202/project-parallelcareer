class DetailMailer < ApplicationMailer
  def detail_introduction(provider,current_user)
      @provider = provider
    @current_user = current_user
    mail(
    to: 'tanachu_78@yahoo.co.jp',
    subject: '口コミのお知らせ'
    )
  end
end
