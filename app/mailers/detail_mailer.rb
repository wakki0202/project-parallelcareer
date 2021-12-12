class DetailMailer < ApplicationMailer
  def detail_introduction(detail,provider,current_user)
    @provider = provider
    @current_user = current_user
    @detail = detail
    mail(
    to: 'ytk0202@outlook.jp',
    subject: '案件の詳細を求めてる方から連絡が来ました！'
    )
  end
end
