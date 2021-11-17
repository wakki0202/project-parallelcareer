class ThanxMailer < ApplicationMailer
   def complete_registration(email,username)
     @username = username
     mail from: 'パラレルキャリア <ytk.jagaimo@gmail.com>', to: email, bcc: "ytk0202@outlook.jp", subject: '【パラキャリ】会員登録完了のお知らせ'
    end
end
