class WelcomeMailer < ApplicationMailer
    default from: 'naoresponda@meinspiro.com.br'
    layout 'mailer'

    def send_material(lead)
       @lead = lead
   
       mail(to: @lead.email, subject: "Nosso material acabou de chegar na sua caixa!");
    end
end
