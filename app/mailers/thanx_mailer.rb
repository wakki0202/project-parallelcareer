class ThanxMailer < ApplicationMailer
   def complete_registration(email,username)
     @username = username
     mail from: 'パラレルキャリア <ytk.jagaimo@gmail.com>', to: email, bcc: "tanachu_78@yahoo.co.jp", subject: '【パラキャリ】会員登録完了のお知らせ'
    end
end
