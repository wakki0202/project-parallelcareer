class DetailMailer < ApplicationMailer
  def detail_introduction(detail,work,current_user)
    @work = work
    @current_user = current_user
    @detail = detail
    mail(
    to: 'tanachu_78@yahoo.co.jp',
    subject: '案件の詳細を求めてる方から連絡が来ました！'
    )
  end
end
