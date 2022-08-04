class NotificationMailMailer < ApplicationMailer
    def send_mail(book)
        @name = book.name
        @author = book.author
        mail(subject: 'book created', to: 'muvvalachaitanya05@gmail.com')
    end
end
