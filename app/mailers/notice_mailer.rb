class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_blog.subject
  #
  
  def sendmail_blog(blog)
    @blog = blog
    test_sender = "miyaoka@diveintocode.jp"
    mail to: test_sender
    mail to: "mo-tanaka@cpost.plala.or.jp", 
      subject: '【Achieve】ブログが投稿されました'
  end
  
  def sendmail_contact(contact)
    @contact = contact
    mail to: "mo-tanaka@cpost.plala.or.jp", 
      subject: '【Achieve】お問い合わせが投稿されました'
  end
end
