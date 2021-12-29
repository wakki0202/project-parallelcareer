class IntroductionMailer < ApplicationMailer
  def complete_introduction(introduction, work, current_user, receiver: nil)
    @introduction = introduction
    @work = work
    @current_user = current_user
    @receiver = receiver ? receiver.email : 'ytk0202@outlook.jp'
    mail(
      to: @receiver,
      subject: '口コミのお知らせ'
    )
  end
end
