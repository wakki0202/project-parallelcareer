class ThanxMailer < ApplicationMailer
   def complete_registration(email,username)
     @username = username
     mail from: 'パラレルキャリア <tanachu_78@yahoo.co.jp>', to: email, bcc: "ytk0202@outlook.jp", subject: '【パラキャリ】会員登録完了のお知らせ'
    end
end
