class WelcomeMailer < ApplicationMailer
    default from: 'nao_responda@mg.meinspiro.com.br'
    layout 'mailer'

    def send_material(lead)
        @lead = lead
        mail(to: @lead.email, subject: "Receba nosso material")
    end
end
