class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_blog.subject
  #
  
  def sendmail_blog(blog)
    @blog = blog
    mail to: "motanaka@nttpc.co.jp", 
      subject: '【Achieve】ブログが投稿されました'
  end
  
  def sendmail_contact(contact)
    @contact = contact
    contact_person = @contact[:email]
    mail to: contact_person, 
      subject: '【Achieve】お問い合わせが投稿されました'
  end
end
